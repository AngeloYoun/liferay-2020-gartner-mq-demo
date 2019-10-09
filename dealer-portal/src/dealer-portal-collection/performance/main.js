const performance = fragmentElement.querySelector('.performance');

const closedSalesDonutChart = bb.generate({
	size: {
		height: 120,
		width: 120
	},
	padding: {
		top: 0,
		right: 0,
		bottom: 0,
		left: 0
	  },
	data: {
    columns: [['Sales Closed', 12 / 25], ['Sales Unclosed', (25 - 12) / 25]],
    colors: {
      'Sales Closed': '#50D2A0',
      'Sales Unclosed': '#CBF1E3'
    },
    order: 'asc',
    type: 'donut'
  },
  donut: {
    label: {
      show: false
    },
    width: 13
  },
  legend: {
    hide: true
  },
  bindto: '#closedSalesDonutChart'
});

const carsSoldDonutChart = bb.generate({
	size: {
		height: 120,
		width: 120
	},
  data: {
    columns: [['Car Sold', 31 / 40], ['Car Unsold', (40 - 31) / 40]],
    colors: {
      'Car Sold': '#50D2A0',
      'Car Unsold': '#CBF1E3'
    },
    order: 'desc',
    type: 'donut'
  },
  donut: {
    label: {
      show: false
    },
    width: 13
  },
  legend: {
    hide: true
  },
  bindto: '#carsSoldDonutChart'
});
