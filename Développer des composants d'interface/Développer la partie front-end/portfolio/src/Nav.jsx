import { Navbar } from "flowbite-react";
import React, { useState } from "react";
import { Link } from "react-router-dom";

export default function Nav() {
    const [btn, setBtn] = useState({
        home: false,
        works: false,
        about: false,
        contact: false
    });
    const [openMenu, setOpenMenu] = useState(false);

    function simulateClick(e) {
        e.click();
    }
    function changeActive(state) {
        switch (state) {
            case "home":
                setBtn({
                    home: true,
                    works: false,
                    about: false,
                    contact: false
                });
                break;
            case "about":
                setBtn({
                    home: false,
                    works: false,
                    about: true,
                    contact: false
                });
                break;
            case "works":
                setBtn({
                    home: false,
                    works: true,
                    about: false,
                    contact: false
                });
                break;
            case "contact":
                setBtn({
                    home: false,
                    works: false,
                    about: false,
                    contact: true
                });
                break;
            default:
                setBtn({
                    home: false,
                    works: false,
                    about: false,
                    contact: false
                });
                break;

        }

        setOpenMenu(false);
    }

    return (
        <div className="border-b">
            <Navbar >
                <Link to={"/"}>
                    <Navbar.Brand>
                        <span className="self-center whitespace-nowrap text-xl font-semibold dark:text-white">
                            Florian Pasquet
                        </span>
                    </Navbar.Brand>
                </Link>
                <Navbar.Toggle ref={simulateClick} />
                <Navbar.Collapse >
                    <Link to={"/"}>
                        <Navbar.Link active={btn.home} onClick={() => changeActive("home")}>
                            Accueil
                        </Navbar.Link>
                    </Link>
                    <Link to={"works"}>
                        <Navbar.Link active={btn.works} onClick={() => changeActive("works")}>
                            Travaux
                        </Navbar.Link>
                    </Link>
                    <Link to={"about"}>
                        <Navbar.Link active={btn.about} onClick={() => changeActive("about")}>
                            À Propos
                        </Navbar.Link>
                    </Link>
                    <Link to={"contact"}>
                        <Navbar.Link href="/contact" active={btn.contact} onClick={() => changeActive("contact")}>
                            Contact
                        </Navbar.Link>
                    </Link>
                </Navbar.Collapse>
            </Navbar>
        </div>
    );
}