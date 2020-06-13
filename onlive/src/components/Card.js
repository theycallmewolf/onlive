import React from 'react';
import Status from './Status';
import styles from '../assets/css/Card.module.css';

class Card extends React.Component {
	render() {
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

		if (!this.props.concert) {
			return '';
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
						<Status concert={this.props.concert} />
					</span>
					{/* <span className={styles.cardFooter}>more</span> */}
				</a>
			</div>
		);
	}
}

export default Card;
