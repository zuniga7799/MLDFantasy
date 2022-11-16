import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import './App.css';
import { HomeNav } from './components/NavBar/homenav';
import Home from './pages';
import Team from './pages/team';
import Players from './pages/players';
import Scoreboard from './pages/scoreboard';
import Standings from './pages/standings';

function App() {
  return (
    <Router>
      <HomeNav/>
      <Routes>
        <Route path='/' element={<Home />} />
        <Route path='/team/:id' element={<Team />} />
        <Route path='/players' element={<Players />} />
        <Route path='/standings' element={<Standings />} />
        <Route path='/scoreboard' element={<Scoreboard/>} />
      </Routes>
    </Router>
  );
}

export default App;
