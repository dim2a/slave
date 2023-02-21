import logo from './logo.svg';
import './App.css';

function App() {

  const clickHandler = () => {
    window.location = 'https://dim2a.github.io/master';
    console.log('click');
  };

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <button onClick={clickHandler}>returnToOpener</button>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
