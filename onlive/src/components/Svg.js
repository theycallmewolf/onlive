import React from 'react';
import sprite from '../assets/img/sprite.svg';
// @ https://medium.com/@gineetmehta/how-to-use-svg-sprites-regular-html-vs-react-9f98948c03f0

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
