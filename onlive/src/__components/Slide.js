import React from 'react';
import styles from '../assets/css/Slide.module.css';
import stylesProgress from '../assets/css/ProgressBar.module.css';

class Highlight extends React.Component {
	render() {
		// console.log(this.props.concert);
		// console.log(this.props.tickets);

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

		var concert;


			this.props.concert === undefined ? (concert = {}) :
			(concert = this.props.concert);

		var status;


			this.props.status === 0 ? (status = 'CONFIRMED') :
			(status = this.props.status + ' tickets needed to be confirmed');

		return (
			<div className={styles.slideContainer}>
				<div className={styles.slideHeader}>
					{monthNames[new Date(concert.date).getMonth()]} {new Date(concert.date).getDate()}, {' '}
					{new Date(concert.date).getHours()}:
					{(
						new Date(concert.date).getMinutes() < 10 ? '0' :
						'') + new Date(concert.date).getMinutes()}
				</div>
				<figure>
					<img src={'../../media/bands/' + concert.img} alt={concert.title} />
				</figure>
				<div className={styles.slideBody}>
					<h1>{concert.title}</h1>
					<p>{concert.description}</p>
					<div className={stylesProgress.progress}>
						<div className={stylesProgress.bar} style={{ width: this.props.progressBar + '%' }} />
					</div>
					<span className={stylesProgress.status}>{status}</span>
				</div>
			</div>
		);
	}
}

export default Highlight;
