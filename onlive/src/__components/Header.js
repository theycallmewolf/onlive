import React from 'react';
import sprite from '../assets/img/sprite.svg';

class Intro extends React.Component {
	render() {
		return (
			<header id="header">
				<a href="/" id="logo">
					<svg>
						<use href={sprite + '#logo-svg'} />
					</svg>
				</a>
				<div className="buttons">
					<button id="menu">
						<svg>
							<use href={sprite + '#i-menu-open-svg'} />
						</svg>
					</button>
					<a id="search" href="/search/">
						<svg>
							<use href={sprite + '#i-search-svg'} />
						</svg>
					</a>
				</div>
				<nav id="nav">
					{/* <a href="/home" className="selected">
						Concerts
					</a> */}
					<a href="/home">Concerts</a>
					<a href="/about/">About</a>
					<a href="/arena/">Enter Arena</a>
				</nav>
			</header>
		);
	}
}

export default Intro;
