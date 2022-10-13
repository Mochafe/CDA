import { Accordion } from "flowbite-react"

export default function Home() {
    return (
        <div className="container text-center w-full">
            <h1 className="text-center mt-3 font-bold text-3xl">Accueil</h1>
            <section>
                <p className="mt-6">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vehicula, quam quis fermentum rutrum, mi odio elementum ipsum, ut vestibulum sapien enim quis odio. Nunc neque tortor, facilisis in ullamcorper et, ultrices ut odio. In sed elit sed mauris ullamcorper varius vel quis dolor. Proin elementum leo dictum, tristique ante eu, aliquam sem. In hac habitasse platea dictumst. Praesent ornare sagittis lorem, iaculis bibendum ante egestas sed. Nam tincidunt ex eu venenatis rutrum.
                </p>
                <p className="mt-6">
                    Cras a dignissim velit. Maecenas malesuada vel ipsum eget tincidunt. Phasellus nulla lectus, congue non condimentum ac, ullamcorper sit amet enim. Aenean mauris nulla, posuere eget risus consequat, lobortis aliquet nulla. Duis non sodales nulla. Curabitur nulla augue, euismod et est eu, congue venenatis felis. In viverra molestie libero varius accumsan. Etiam finibus est eu maximus vehicula. Aliquam quis dignissim mauris. Suspendisse tempor rhoncus euismod. Fusce vel felis ut lectus rutrum maximus. Aenean malesuada ut nisl sit amet sollicitudin. Suspendisse finibus nisi eget nisi fermentum, sed iaculis ligula pharetra. Cras ac est ipsum. Mauris ultricies semper interdum. Donec malesuada dui velit, ac tincidunt ante sodales et.
                </p>
                <p className="mt-6">
                    Duis auctor pharetra aliquet. Donec eros diam, lobortis vel dui sit amet, interdum volutpat nibh. Etiam magna mauris, convallis id turpis sit amet, imperdiet vulputate justo. Fusce laoreet fermentum elit. Nam ac pulvinar augue, aliquam egestas erat. Sed interdum massa id diam dictum porta. Nullam pulvinar magna facilisis, condimentum enim eget, scelerisque elit. Ut tempor tincidunt mauris, eget porttitor lacus porta non.
                </p>
            </section>
            <div className="mt-10"> 
                <Accordion alwaysOpen={true}>
                    <Accordion.Panel>
                        <Accordion.Title>
                            What is Flowbite?
                        </Accordion.Title>
                        <Accordion.Content>
                            <p className="mb-2 text-gray-500 dark:text-gray-400">
                                Flowbite is an open-source library of interactive components built on top of Tailwind CSS including buttons, dropdowns, modals, navbars, and more.
                            </p>
                            <p className="text-gray-500 dark:text-gray-400">
                                Check out this guide to learn how to{' '}
                                <a
                                    href="https://flowbite.com/docs/getting-started/introduction/"
                                    className="text-blue-600 hover:underline dark:text-blue-500"
                                >
                                    get started
                                </a>
                                {' '}and start developing websites even faster with components on top of Tailwind CSS.
                            </p>
                        </Accordion.Content>
                    </Accordion.Panel>
                    <Accordion.Panel>
                        <Accordion.Title>
                            Is there a Figma file available?
                        </Accordion.Title>
                        <Accordion.Content>
                            <p className="mb-2 text-gray-500 dark:text-gray-400">
                                Flowbite is first conceptualized and designed using the Figma software so everything you see in the library has a design equivalent in our Figma file.
                            </p>
                            <p className="text-gray-500 dark:text-gray-400">
                                Check out the{' '}
                                <a
                                    href="https://flowbite.com/figma/"
                                    className="text-blue-600 hover:underline dark:text-blue-500"
                                >
                                    Figma design system
                                </a>
                                {' '}based on the utility classes from Tailwind CSS and components from Flowbite.
                            </p>
                        </Accordion.Content>
                    </Accordion.Panel>
                    <Accordion.Panel>
                        <Accordion.Title>
                            What are the differences between Flowbite and Tailwind UI?
                        </Accordion.Title>
                        <Accordion.Content>
                            <p className="mb-2 text-gray-500 dark:text-gray-400">
                                The main difference is that the core components from Flowbite are open source under the MIT license, whereas Tailwind UI is a paid product. Another difference is that Flowbite relies on smaller and standalone components, whereas Tailwind UI offers sections of pages.
                            </p>
                            <p className="mb-2 text-gray-500 dark:text-gray-400">
                                However, we actually recommend using both Flowbite, Flowbite Pro, and even Tailwind UI as there is no technical reason stopping you from using the best of two worlds.
                            </p>
                            <p className="mb-2 text-gray-500 dark:text-gray-400">
                                Learn more about these technologies:
                            </p>
                            <ul className="list-disc pl-5 text-gray-500 dark:text-gray-400">
                                <li>
                                    <a
                                        href="https://flowbite.com/pro/"
                                        className="text-blue-600 hover:underline dark:text-blue-500"
                                    >
                                        Flowbite Pro
                                    </a>
                                </li>
                                <li>
                                    <a
                                        href="https://tailwindui.com/"
                                        rel="nofollow"
                                        className="text-blue-600 hover:underline dark:text-blue-500"
                                    >
                                        Tailwind UI
                                    </a>
                                </li>
                            </ul>
                        </Accordion.Content>
                    </Accordion.Panel>
                </Accordion>
            </div>
        </div>
    )
}