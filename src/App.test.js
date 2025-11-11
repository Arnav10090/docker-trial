import { render, screen } from '@testing-library/react';
import App from './App';

test('renders docker setup heading', () => {
  render(<App />);
  const headingElement = screen.getByText(/sample project to test Docker setup/i);
  expect(headingElement).toBeInTheDocument();
});