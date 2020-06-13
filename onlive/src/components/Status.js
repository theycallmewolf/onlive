import React from 'react';
import stylesProgress from '../assets/css/Status.module.css';

class Status extends React.Component {
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
		if (!this.props.concert) {
			return '';
		}
		// console.warn(this.props.concert);
		var status;


			this.state.ticketStatus === 0 ? (status = 'CONFIRMED') :
			(status = this.state.ticketStatus + ' tickets needed to be confirmed');

		return (
			<div>
				<div className={stylesProgress.progress}>
					<div className={stylesProgress.bar} style={{ width: this.state.progressBar + '%' }} />
				</div>
				<span className={stylesProgress.status}>{status}</span>
			</div>
		);
	}
}

export default Status;
