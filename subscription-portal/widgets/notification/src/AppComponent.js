import React from 'react';

import Card from './Card';

export default class extends React.Component {
	render() {
		const heading = (
			<React.Fragment>
				<span className="alert-indicator">
					<svg
						className="icon"
						width="16"
						height="16"
						viewBox="0 0 16 16"
						fill="none"
						xmlns="http://www.w3.org/2000/svg"
					>
						<path
							d="M8 6C7.44727 6 7 6.4469 7 7V12C7 12.5531 7.44727 13 8 13C8.55273 13 9 12.5531 9 12V7C9 6.4469 8.55273 6 8 6Z"
							fill="white"
						/>
						<path
							d="M9 4C9 4.55225 8.55273 5 8 5C7.44727 5 7 4.55225 7 4C7 3.44775 7.44727 3 8 3C8.55273 3 9 3.44775 9 4Z"
							fill="white"
						/>
						<path
							fillRule="evenodd"
							clipRule="evenodd"
							d="M8 0C10.1377 0 12.1465 0.831299 13.6562 2.34375C15.1689 3.85315 16 5.86255 16 8C16 10.1375 15.1689 12.1438 13.6562 13.6562C12.1465 15.1687 10.1377 16 8 16C5.8623 16 3.85645 15.1687 2.34375 13.6562C0.831055 12.1469 0 10.1375 0 8C0 5.86255 0.831055 3.85315 2.34375 2.34375C3.85352 0.831299 5.8623 0 8 0ZM2 8C2 11.3093 4.69043 14 8 14C11.3096 14 14 11.3093 14 8C14 4.69067 11.3096 2 8 2C4.69043 2 2 4.69067 2 8Z"
							fill="white"
						/>
					</svg>
				</span>
				<strong className="lead">Airbag Recall</strong>
			</React.Fragment>
		);
		return (
			<div className="subscription-portal">
				<Card heading={heading}>
					<div className="notification-body">
						<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
						<button className="btn btn-light">Learn More</button>
					</div>
				</Card>
			</div>
		);
	}
}
