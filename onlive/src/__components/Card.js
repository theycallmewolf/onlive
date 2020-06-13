import React from 'react';
import styles from '../assets/css/Card.module.css';
import stylesProgress from '../assets/css/ProgressBar.module.css';

class Card extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			ticketStatus: 0,
			progressBar: 0
		};
	}

	componentDidMount() {
		this.ticketStatus();
		this.ticketProgress();
	}

	ticketStatus() {
		let count;


			this.props.concert.tickets_total - this.props.concert.tickets >= 0 ? (count =
				this.props.concert.tickets_total - this.props.concert.tickets) :
			(count = 0);
		this.setState({ ticketStatus: count });
	}

	ticketProgress() {
		// console.warn(this.props.concert);
		// find average -> % = tkts * 100 / tkts_total
		let count = this.props.concert.tickets * 100 / this.props.concert.tickets_total;
		this.setState({ progressBar: parseInt(count) });
		// console.warn(this.props.concert.tickets_total);
		// console.warn(this.props.concert.tickets);
	}

	render() {
		// console.log(this.props.concert);
		// console.error('state progressBar');
		// console.error(this.state.progressBar);
		const monthNames = [
			'Jan',
			'Feb',
			'Mar',
			'Apr',
			'May',
			'Jun',
			'Jul',
			'Aug',
			'Sep',
			'Oct',
			'Nov',
			'Dec'
		];

		var status;


			this.state.ticketStatus === 0 ? (status = 'CONFIRMED') :
			(status = this.state.ticketStatus + ' tickets needed to be confirmed');

		if (!this.props.concert) {
			return 'bananas';
		}
		return (
			<div className={styles.card}>
				<a href={'/concert/' + this.props.concert.id}>
					<span className={styles.cardHeader}>
						{monthNames[new Date(this.props.concert.date).getMonth()]} {new Date(this.props.concert.date).getDate()}, {' '}
						{new Date(this.props.concert.date).getHours()}:
						{(
							new Date(this.props.concert.date).getMinutes() < 10 ? '0' :
							'') + new Date(this.props.concert.date).getMinutes()}
					</span>
					<figure>
						<img src={'../media/bands/' + this.props.concert.img} alt={this.props.concert.title} />
					</figure>
					<span className={styles.cardBody}>
						<h3>{this.props.concert.title}</h3>
						<p>{this.props.concert.description}</p>
						<div className={stylesProgress.progress}>
							<div className={stylesProgress.bar} style={{ width: this.state.progressBar + '%' }} />
						</div>
						<span className={stylesProgress.status}>{status}</span>
					</span>
					{/* <span className={styles.cardFooter}>more</span> */}
				</a>
			</div>
		);
	}
}

export default Card;
