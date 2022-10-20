import { Card } from "flowbite-react";
import Project from "./projects.json";
import { Button } from "flowbite-react";
import { useState, useEffect } from "react";
// import { axios } from 'axios';

const axios = require('axios').default;



export default function Works() {
    async function gamesFetching() {
        // const response = await fetch("https://itch.io/api/1/zJgbfInBx6rW9asVDLu078dM9jQD3xD0jnbOjWTr/my-games", {
        //     method: "GET",

        // });
        // const games = await response.json();

        const response = await axios.get("/api");
        setGames(response.data.result);
    }

    const [games, setGames] = useState([]);
    useEffect(() => gamesFetching);
    gamesFetching();

    return (
        <div className="container my-16 p-5 border rounded-xl">
            <h1 className="text-center mt-3 font-bold text-3xl border-b">Projets</h1>
            <div className="grid grid-cols-3 gap-4 mt-4">
                {Project.projects.map((project, i) => (
                    <div className="hover:scale-105 transition-all ">
                        <Card key={i}>
                            <h5 className="text-2xl font-bold tracking-tight text-gray-900 dark:text-white border-b ">
                                {project.name}
                            </h5>
                            <p className="min-h-[75px] max-h-[75px] overflow-hidden">
                                {project.description}
                            </p>
                            <p className="text-gray-500 min-h-[90px] flex flex-wrap gap-1">
                                {project.languages.map(language => (
                                    <div className="border p-2 h-fit">{language}</div>
                                ))}
                            </p>
                            <Button href={project.github}>
                                Voir le projet
                            </Button>
                        </Card>
                    </div>
                ))}
            </div>
            <h1 className="text-center mt-6 font-bold text-3xl border-b">Jeux</h1>
            <div className="grid grid-cols-3 gap-4 mt-4">
                {games.map((game, i) => (
                    <div className="hover:scale-105 transition-all ">
                        <Card key={i} imgSrc={game.cover_url}>
                            <h5 className="text-2xl font-bold tracking-tight text-gray-900 dark:text-white border-b ">
                                {game.title}
                            </h5>
                            <p className="min-h-[75px] max-h-[75px] overflow-hidden">
                                {game.short_text}
                            </p>
                            <p className="text-gray-500 min-h-[90px] flex flex-wrap gap-1">
                                <div className="border p-2 h-fit">{"Téléchargement : " + game.downloads_count}</div>
                                <div className="border p-2 h-fit">{"Vue : " + game.views_count}</div>
                                <div className="border p-2 h-fit">{"Date de publication : " + game.published_at.substring(0, 10)}</div>
                            </p>
                            <Button href={game.url}>
                                Voir le jeu
                            </Button>
                        </Card>
                    </div>
                ))}
            </div>
        </div>
    );
}