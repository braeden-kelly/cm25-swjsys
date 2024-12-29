// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Document events
document.addEventListener("turbo:click", async (event) => {
    console.log(event)
})

document.addEventListener("turbo:before-visit", async (event) => {
    console.log(event)
})

document.addEventListener("turbo:visit", async (event) => {
    console.log(event)
})

document.addEventListener("turbo:before-cache", async (event) => {
    console.log(event)
})

document.addEventListener("turbo:before-render", async (event) => {
    console.log(event)
})

document.addEventListener("turbo:render", async (event) => {
    console.log(event)
})

document.addEventListener("turbo:load", async (event) => {
    console.log(event)
})

// Page refresh events
document.addEventListener("turbo:morph", async (event) => {
    console.log(event)
})

document.addEventListener("turbo:before-morph-element", async (event) => {
    console.log(event)
})

document.addEventListener("turbo:before-morph-attribute", async (event) => {
    console.log(event)
})

document.addEventListener("turbo:morph-element", async (event) => {
    console.log(event)
})

// Form events
document.addEventListener("turbo:submit-start", async (event) => {
    console.log(event)
})

document.addEventListener("turbo:submit-end", async (event) => {
    console.log(event)
})

// Frame events
document.addEventListener("turbo:before-frame-render", async (event) => {
    console.log(event)
})

document.addEventListener("turbo:frame-render", async (event) => {
    console.log(event)
})

document.addEventListener("turbo:frame-load", async (event) => {
    console.log(event)
})

document.addEventListener("turbo:frame-missing", async (event) => {
    console.log(event)
})

// Streams events
document.addEventListener("turbo:before-stream-render", async (event) => {
    console.log(event)
})

// HTTP request events
document.addEventListener("turbo:before-fetch-request", async (event) => {
    console.log(event)
})

document.addEventListener("turbo:before-fetch-response", async (event) => {
    console.log(event)
})

document.addEventListener("turbo:before-prefetch", async (event) => {
    console.log(event)
})

document.addEventListener("turbo:fetch-request-error", async (event) => {
    console.log(event)
})