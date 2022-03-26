import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import './App.css';
import { HomeNav } from './components/NavBar/homenav';
import Home from './pages';
import MyTeam from './pages/myteam';
import Players from './pages/players';
import Scoreboard from './pages/scoreboard';
import Standings from './pages/standings';

function App() {
  return (
    <Router>
      <HomeNav/>
      <Routes>
        <Route path='/' element={<Home />} />
        <Route path='/myteam' element={<MyTeam />} />
        <Route path='/players' element={<Players />} />
        <Route path='/standings' element={<Standings />} />
        <Route path='/scoreboard' element={<Scoreboard/>} />
      </Routes>
    </Router>
  );
}

export default App;
