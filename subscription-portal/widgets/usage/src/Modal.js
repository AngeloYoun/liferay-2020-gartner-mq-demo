import React from 'react';
import PropTypes from 'prop-types';

class Modal extends React.Component {
	render() {
		const {children, footer, header, onClose, size} = this.props;

		return (
			<div className="modal show" role="dialog" tabIndex="-1">
				<div className={`modal-dialog ${size ? `modal-${size}` : ''}`}>
					<div className="modal-content">
						{(header || onClose) && (
							<div className="modal-header">
								<div className="modal-title">{header}</div>

								<button
									aria-label="Close"
									className="close"
									onClick={onClose}
									type="button"
								>
									X
								</button>
							</div>
						)}

						<div className="modal-body">{children}</div>

						{footer && <div className="modal-footer">{footer}</div>}
					</div>
				</div>
			</div>
		);
	}
}

Modal.propTypes = {
	children: PropTypes.node.isRequired,
	footer: PropTypes.node,
	header: PropTypes.string,
	onClose: PropTypes.func,
	size: PropTypes.string.isRequired
};

export default Modal;
