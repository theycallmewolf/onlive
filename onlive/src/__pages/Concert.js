import React from 'react';
import Header from '../components/Header';
import Background from '../components/Background';
import Slide from '../components/Slide';
import ConcertDetail from '../components/ConcertDetail';
import Footer from '../components/Footer';
import Config from '../config';

class Concert extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			concertId: this.props.match.params.id,
			concert: {},
			ticketStatus: 0,
			progressBar: 0
		};
		// console.log(this.props.match.params.id);
		// this.ticketsStatus = this.ticketsStatus.bind(this);
	}

	componentDidMount() {
		this.getConcert();
		this.getPriceList();
	}

	getConcert() {
		fetch(Config.api_url + 'getConcert.php?id=' + this.state.concertId)
			.then((response) => {
				return response.json();
			})
			.then((json) => {
				this.setState({ concert: json });
				// console.log(this.state.concert);
			})
			.then(() => {
				this.ticketStatus();
				this.ticketProgress();
			});
	}

	getPriceList() {
		fetch(Config.api_url + 'getPriceList.php?id=' + this.state.concertId)
			.then((response) => {
				return response.json();
			})
			.then((json) => {
				this.setState({ priceList: json });
			});
	}

	ticketStatus() {
		// console.warn(this.state.concert);
		let count;


			this.state.concert.tickets_total - this.state.concert.tickets >= 0 ? (count =
				this.state.concert.tickets_total - this.state.concert.tickets) :
			(count = 0);

		this.setState({ ticketStatus: count });
		// console.error('state ticketStatus');
		// console.error(this.state.ticketStatus);
	}

	ticketProgress() {
		// find average -> % = tkts * 100 / tkts_total
		let count = this.state.concert.tickets * 100 / this.state.concert.tickets_total;
		this.setState({ progressBar: count });
		// console.warn(this.state.concert.tickets_total);
		// console.warn(this.state.concert.tickets);
		// console.error('state progressBar');
		// console.error(this.state.progressBar);
	}

	render() {
		return (
			<div id="home">
				<Header />
				<main className="top">
					<Background concert={this.state.concert} />
					<section id="highlight">
						<Slide concert={this.state.concert} status={this.state.ticketStatus} progressBar={this.state.progressBar} />
					</section>
					<section id="content">
						<ConcertDetail concert={this.state.concert} prices={this.state.priceList} />
					</section>
				</main>
				<Footer />
			</div>
		);
	}
}

export default Concert;
