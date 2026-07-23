import CalculateScore from './Components/CalculateScore';

function App() {
  return (
    <div>
      <CalculateScore
        Name="Sharmila"
        School="Vignan University"
        Total={480}
        Goal={5}
      />
    </div>
  );
}

export default App;