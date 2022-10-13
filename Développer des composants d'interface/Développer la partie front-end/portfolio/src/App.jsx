import { Outlet } from "react-router-dom";
import FooterApp from "./FooterApp"
import Nav from "./Nav";



export default function App() {
  return (
    <div className="App bg-white dark:bg-slate-700 dark:text-white">    
      <Nav />
      <div style={{minHeight: "88vh", display: "flex", justifyContent:"center", alignItems:"flex-start"}}>
        <Outlet />
      </div>
      <FooterApp />
    </div>
  );
}
