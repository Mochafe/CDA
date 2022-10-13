import { Footer } from "flowbite-react";

export default function FooterApp() {
    return (
        <Footer container={true} rounded={false}>
            <Footer.Copyright
                href="#"
                by="Mochafe™"
                year={2022}
            />
            <Footer.LinkGroup>
                <Footer.Link href="#">
                    À Propos
                </Footer.Link>
                <Footer.Link href="#">
                    Contact
                </Footer.Link>
            </Footer.LinkGroup>
        </Footer>
    )
}