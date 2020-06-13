import React from 'react';
import Footer from '../components/Footer';
import Background from '../components/Background';
import Button from '../components/Button';
import Link from '../components/Link';
import Svg from '../components/Svg';
import Config from '../config';

class Arena extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			concert: {},
			comments: []
		};

		this.checkTicket = this.checkTicket.bind(this);
		this.sendComment = this.sendComment.bind(this);
		this.getComments = this.getComments.bind(this);
	}

	componentDidMount() {
		this.checkCookie();
	}

	checkCookie() {
		var access = document.cookie;
		var link = access.split('a=').pop();
		// @ https://stackoverflow.com/questions/3568921/how-to-remove-part-of-a-string

		if (!link) {
			return '';
		}

		fetch(Config.api_url + 'getConcertByCookie.php?cookie=' + link)
			.then((response) => {
				return response.json();
			})
			.then((json) => {
				this.setState({ concert: json });
				// console.log(this.state.concert);
				document.querySelector('#access').classList.add('hide');
				document.querySelector('#stage').classList.remove('hide');
			})
			.then(() => {
				this.getComments();
			});
	}

	checkTicket(e) {
		e.preventDefault();

		const ticket = document.querySelector('#code').value;

		fetch(Config.api_url + 'getTicket.php?code=' + ticket)
			.then((response) => {
				return response.json();
			})
			.then((json) => {
				if (json != null) {
					this.setState({ concert: json });
					document.querySelector('#access').classList.add('hide');
					document.querySelector('#stage').classList.remove('hide');

					// set a cookie to acess the stage
					// https://www.w3schools.com/js/js_cookies.asp
					var now = new Date();
					var time = now.getTime();
					time += 3600 * 1000;
					now.setTime(time);
					document.cookie = 'a=' + this.state.concert.link + '; expires=' + now.toUTCString() + '; path=/';
				} else {
					alert('Sorry! Invalid code.');
					// por falta de tempo fica só um alerta e não uma msg no DOM
				}
			})
			.then(() => {
				let data = { id: this.state.concert.ticket_id };
				fetch(Config.api_url + 'updateCode.php', {
					method: 'POST',
					headers: {
						'Content-Type': 'application/json'
					},
					body: JSON.stringify(data)
				}).catch((error) => console.error('OOPS: ' + error));
			})
			.then(this.getComments);
	}

	getComments() {
		console.warn(Config.api_url + 'getComments.php?id=' + this.state.concert.id);
		fetch(Config.api_url + 'getComments.php?id=' + this.state.concert.id)
			.then((response) => {
				return response.json();
			})
			.then((json) => {
				this.setState({ comments: json });
			});
	}

	sendComment(e) {
		var val = document.querySelector('#my-comment').value;

		if (val === '') {
			return '';
		}
		e.preventDefault();
		let data = {
			concert_id: this.state.concert.id,
			comment: document.querySelector('#my-comment').value,
			photo: 'wolf.jpg',
			name: 'Wolf'
		};

		fetch(Config.api_url + 'insertComment.php', {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json'
			},
			body: JSON.stringify(data)
		}).then((response) => {
			if (!response.ok) {
				throw Error('Data sent - Network response NOT OK');
			} else {
				console.log('Data sent - Network response OK');
			}
		});
		this.getComments();
		document.querySelector('#my-comment').value = '';
	}

	render() {
		return (
			<div>
				<main>
					<Background />
					<section id="arena">
						<div id="access">
							<Svg href={'#logo-svg'} />
							<h1>Arena</h1>
							<p>Enter your ticket code to access the live concert</p>
							<form onSubmit={this.checkTicket}>
								<input type="text" name="code" id="code" placeholder="ticket code" />
								<Button type={'button'} size={2} label={'Enter'} />
							</form>
							<br />
							<Link href={'/.'} label={'website'} />
						</div>
						<div id="stage" className="hide">
							<div id="player">
								<Svg href={'#logo-svg'} />
								<Link href={'/home/'} label={'visit website'} />
								<iframe
									src={'https://www.youtube.com/embed/' + this.state.concert.link}
									frameBorder="0"
									allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
									allowFullScreen
									title="concert"
								/>
								<div>
									<h1>{this.state.concert.title}</h1>
									<p>{this.state.concert.description}</p>
								</div>
							</div>
							<div id="chat">
								<div className="comment-list">
									<div>
										{this.state.comments.map((item, i) => {
											return (
												<div className="comment" key={i}>
													<div className="profile">
														<img src={'../media/users/' + item.photo} alt={item.name} />
													</div>
													<div>
														<p>{item.comment}</p>
														<span className="info">
															{item.name} - {item.date}
														</span>
													</div>
												</div>
											);
										})}
									</div>
								</div>
								<form onSubmit={this.sendComment}>
									<input type="text" name="my-comment" id="my-comment" />
									<Button type={'button'} size={1} label={'add comment'} />
								</form>
							</div>
						</div>
					</section>
				</main>
				<Footer />
			</div>
		);
	}
}

export default Arena;
