import React from 'react';
import styles from '../assets/css/Button.module.css';

class Button extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			size: this.props.size,
			style: styles.btn
		};
	}

	componentDidMount() {
		this.checkSize();
	}

	checkSize() {
		if (this.props.size === 1) {
			this.setState({ style: styles.btnSm });
		}
		if (this.props.size === 2) {
			this.setState({ style: styles.btn });
		}
		if (this.props.size === 3) {
			this.setState({ style: styles.btnLg });
		}
	}

	render() {
		if (this.props.type === 'button' || !this.props.type) {
			return (
				<button onClick={this.props.onClick} className={this.state.style}>
					{this.props.label}
				</button>
			);
		}

		if (this.props.type === 'link') {
			return (
				<a href={this.props.href} className={this.state.style}>
					{this.props.label}
				</a>
			);
		}
	}
}

export default Button;
