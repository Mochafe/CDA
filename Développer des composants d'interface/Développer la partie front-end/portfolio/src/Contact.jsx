import { Label, TextInput, Button, Textarea } from "flowbite-react"
import { useState } from "react";

export default function Contact() {
    const [object, setObject] = useState("");
    const [message, setMessage] = useState("");

    const handleObjectChange = (event) => {
        setObject(event.target.value);
    }

    const handleMessageChange = (event) => {
        setMessage(event.target.value);
    }


    return (
        <div>
            <form className="flex flex-col gap-4" action={"mailto:florianpasquett@gmail.com?subject=" + object + "&body=" + message} method="post" id="form">
                <div>
                    <div className="mb-2 block">
                        <Label
                            htmlFor="mail"
                            value="Mail"
                        />
                    </div>
                    <TextInput
                        id="mail"
                        type="email"
                        placeholder="personne@mail.com"
                        required={true}
                        shadow={true}
                    />
                </div>
                <div>
                    <div className="mb-2 block">
                        <Label
                            htmlFor="object"
                            value="Objet"
                        />
                    </div>
                    <TextInput
                        id="object"
                        type="text"
                        required={true}
                        shadow={true}
                        onChange={handleObjectChange}
                    />
                </div>
                <div id="textarea">
                    <div className="mb-2 block">
                        <Label
                            htmlFor="message"
                            value="Message"
                        />
                    </div>
                    <Textarea
                        id="message"
                        placeholder="Message..."
                        required={true}
                        rows={7}
                        onChange={handleMessageChange}
                    />
                </div>
                <Button type="submit">
                    Envoyer
                </Button>
                <Button type="reset">
                    Vider
                </Button>
            </form>
        </div>
    )
}