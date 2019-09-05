import React from 'react';

import Card from './Card';
import ProgressBar from './ProgressBar';

export default class extends React.Component {
	render() {
		const cloudIcon = (
			<svg
				width="26"
				height="21"
				viewBox="0 0 26 21"
				fill="none"
				xmlns="http://www.w3.org/2000/svg"
			>
				<path
					d="M21.6667 10.0651V10.0333C21.6667 5.03419 18.0218 0.96666 13.5417 0.96666C10.0701 0.96666 6.33642 3.12623 5.98542 6.65429C2.64117 6.92969 0 9.86503 0 13.4333C0 17.183 2.91579 20.2333 6.5 20.2333H21.125C23.8127 20.2333 26 17.9457 26 15.1333C26 12.5125 24.1009 10.3478 21.6667 10.0651ZM16.0913 12.7006L14.4663 14.4006C14.3607 14.5111 14.222 14.5667 14.0833 14.5667C13.9447 14.5667 13.806 14.5111 13.7004 14.4006C13.4886 14.1791 13.4886 13.8209 13.7004 13.5994L14.4008 12.8667H14.0833C12.8478 12.8667 11.375 13.2594 11.375 15.1333C11.375 15.4467 11.1323 15.7 10.8333 15.7C10.5343 15.7 10.2917 15.4467 10.2917 15.1333C10.2917 13.0044 11.7092 11.7333 14.0833 11.7333H14.4008L13.7004 11.0006C13.4886 10.7791 13.4886 10.4209 13.7004 10.1994C13.9122 9.97779 14.2545 9.97779 14.4663 10.1994L16.0913 11.8994C16.3031 12.1209 16.3031 12.4791 16.0913 12.7006Z"
					fill="#2368EE"
				/>
			</svg>
		);

		return (
			<div className="subscription-portal">
				<Card heading="Cloud Share" iconSVG={cloudIcon} subheading="Basic">
					<ProgressBar title="GPS" progress="60" />
					<ProgressBar title="Car Tracker" progress="82" />
				</Card>
			</div>
		);
	}
}
