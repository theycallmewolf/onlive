import React from 'react';
import Config from '../config';
import Header from '../components/Header';
import Footer from '../components/Footer';
import Card from '../components/Card';
import sprite from '../assets/img/sprite.svg';
// @ https://medium.com/@gineetmehta/how-to-use-svg-sprites-regular-html-vs-react-9f98948c03f0

class Checkout extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			search: []
		};
		this.search = this.search.bind(this);
	}

	componentDidMount() {
		document.querySelector('#search-field').focus();
	}

	search(e) {
		e.preventDefault();

		// get search terms from form
		var terms = document.querySelector('#search-field').value;

		fetch(Config.api_url + 'search.php?query=' + terms)
			.then((response) => {
				console.warn(Config.api_url + 'search.php?query=');
				return response.json();
			})
			.then((json) => {
				this.setState({ search: json });
			});
	}

	render() {
		// console.warn(this.state.search);

		if (this.state.search === []) {
			return '';
		}
		return (
			<div id="home">
				<Header />
				<main className="top">
					<section id="content-search">
						<div id="search-area">
							<form onSubmit={this.search} onChange={this.search}>
								<input type="text" name="search-field" id="search-field" />
								<button>
									<svg>
										<use href={sprite + '#i-search-svg'} />
									</svg>
								</button>
							</form>
							<div className="card-container">
								{this.state.search.map((item, i) => {
									// console.log(item);
									return <Card concert={item} key={i} />;
								})}
							</div>
						</div>
					</section>
				</main>
				<Footer />
			</div>
		);
	}
}

export default Checkout;
