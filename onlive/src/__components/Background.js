import React from 'react';
import styles from '../assets/css/Background.module.css';

class Background extends React.Component {
	render() {
		var concert;


			this.props.concert === undefined ? (concert = {}) :
			(concert = this.props.concert);
		// console.warn(concert);
		return (
			<div id={styles.bg}>
				<img src={'../../media/bands/' + concert.img} alt={concert.title} />
			</div>
		);
	}
}

export default Background;
