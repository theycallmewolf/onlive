import React from 'react';
import Header from '../components/Header';
import Background from '../components/Background';
import Slide from '../components/Slide';
import Cart from '../components/Cart';
import Footer from '../components/Footer';

class Checkout extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			concertId: this.props.match.params.concert_id,
			ticketPrice: this.props.match.params.ticket_price,
			concert: {}
		};
	}

	render() {
		// console.warn(this.props.match.params);
		// console.warn(this.props.concerts);
		var concert;
		this.props.concerts.forEach((element) => {
			if (element.id === this.props.match.params.concert_id) {
				concert = element;
			}
		});
		// console.warn(concert);
		return (
			<div id="home">
				<Header />
				<main className="top">
					<Background concert={concert} />
					<section id="highlight">
						<Slide concert={concert} />
					</section>
					<section id="content">
						<Cart concert={concert} price={this.state.ticketPrice} />
					</section>
				</main>
				<Footer />
			</div>
		);
	}
}

export default Checkout;
