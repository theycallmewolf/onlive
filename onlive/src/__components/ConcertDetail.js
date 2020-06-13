import React from 'react';
import Button from '../components/Button';

class ConcertDetail extends React.Component {
	render() {
		if (!this.props.prices) {
			return '';
		}
		return (
			<div id="concert-detail" className="tab-content">
				<div className="ticket">
					<h2>Buy Your Ticket</h2>
					<div className="option-list">
						{this.props.prices.map((item, i) => {
							return (
								<div className="option" key={i}>
									<span>
										<h3>{item.price_val}EUR</h3>
										<p>{item.price_desc}</p>
									</span>
									<Button
										type={'link'}
										size={1}
										href={'/checkout/' + item.concert_id + '/' + item.price_val}
										label={'buy'}
									/>
									{/* @ https://stackoverflow.com/questions/37696391/multiple-params-with-react-router */}
								</div>
							);
						})}
					</div>
				</div>
				<div className="about">
					<h2>About</h2>
					<p>{this.props.concert.text}</p>
				</div>
			</div>
		);
	}
}

export default ConcertDetail;
