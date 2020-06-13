import React from 'react';
import sprite from '../assets/img/sprite.svg';

class Svg extends React.Component {
	render() {
		return (
			<svg>
				<use href={sprite + this.props.href} />
			</svg>
		);
	}
}

export default Svg;
