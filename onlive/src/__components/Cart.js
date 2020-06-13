import React from 'react';
import Config from '../config';
import Button from './Button';

class Cart extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			concert: this.props.concert,
			defaultPrice: this.props.price,
			quantity: 1,
			totalPrice: '',
			buyersName: '',
			buyersEmail: ''
		};
	}

	updatePrice() {
		let quantity = document.querySelector('#quantity').value;
		let defaultPrice = document.querySelector('#default-price').value;
		let price = document.querySelector('#price');
		price.value = defaultPrice * quantity;
	}

	sendForm = async (e) => {
		e.preventDefault();

		let data = {
			concert_id: this.props.concert.id,
			quantity: document.querySelector('#quantity').value,
			price: document.querySelector('#price').value,
			name: document.querySelector('#name').value,
			email: document.querySelector('#email').value
		};

		fetch(Config.api_url + 'insertTicket.php/', {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json'
			},
			body: JSON.stringify(data)
		})
			.then((response) => {
				if (!response.ok) {
					throw Error('Data sent - Network response NOT OK');
				} else {
					console.log('Data sent - Network response OK');
				}
			})
			.catch((error) => console.error('OOPS: ' + error));

		document.querySelector('#content form').classList.add('hide');
		document.querySelector('#content .result').classList.remove('hide');
	};

	render() {
		// console.error(this.props.concert);

		if (!this.props.concert) {
			return '';
		}

		return (
			<div id="cart" className="tab-content">
				<div className="red-card">
					<form onSubmit={this.sendForm}>
						<input type="hidden" id="default-price" value={this.props.price} />
						<label htmlFor="quantity">Tickets Wanted</label>
						<input type="number" name="quantity" id="quantity" min="1" defaultValue="1" onChange={this.updatePrice} />
						{/* @ https://www.w3schools.com/jsref/event_onchange.asp */}
						<label htmlFor="price">price in euros</label>
						<input type="text" name="price" id="price" defaultValue={this.state.defaultPrice} disabled />
						<label htmlFor="name">name</label>
						<input type="text" name="name" id="name" required />
						<label htmlFor="email">email</label>
						<input type="email" name="email" id="email" required />
						<span className="note">
							Remember that you will only pay for this ticket if the concert happens. We will send you the entry code to
							30 minutes before the concert starts. This code is valid for one entrance only.
						</span>
						<Button type={'button'} label={'next'} size={2} />
					</form>
					<div className="result hide">
						<h2>The band says thanks</h2>
						<h3>{this.props.concert.band_msg}</h3>
						<p>- {this.props.concert.band_sign}</p>
					</div>
				</div>
			</div>
		);
	}
}

export default Cart;
