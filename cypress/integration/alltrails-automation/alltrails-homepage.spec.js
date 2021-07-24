/// <reference types="cypress" />

beforeEach(() => {
    cy.clearLocalStorage()
    cy.clearCookies()
})
describe('I navigate to the homepage and click on the trail nearby', () => {
        it('click on the trail nearby and look for the url specified', () => {
            cy.visit('https://www.alltrails.com')
            cy.contains('Find your next trail')
            cy.get('div[itemid="/trail/us/texas/shady-brook-trail"]').click()
            cy.url().should('include','https://www.alltrails.com/trail/us/texas/shady-brook-trail')
        })
    }
)

describe('I login with the test user credentials', () => {
        it('login and redirect to homepage', () => {
            cy.visit('https://www.alltrails.com')
            cy.contains('Find your next trail')
            cy.contains('Log in').click()
            cy.get('input[type="email"]').click().type('mpunith717@gmail.com')
            cy.get('input[name="userPassword"]').click().type('123456')
            cy.get('input[type="submit"]').click()
            cy.contains('Test') //Test is the first name of my user
        })
    }
)

describe('I search for the city plano', () => {
        it('should be redirected to the page with list of trails in Plano', () => {
            cy.visit('https://www.alltrails.com')
            cy.contains('Find your next trail')
            cy.get('input[data-test-id="algoliaPlaceholderText"]').click().type('Plano')
            cy.wait(1000)
            cy.get('a[id="cityo-6515"]').click()
            cy.contains('Best trails in Plano, Texas')
        })
    })

describe('I buy pro features of All Trails account', () => {
    it( 'sign up for Annual account and buy using credit card', () => {
        cy.contains('Buy Pro').click()
        cy.contains('Annual Plan').click()
        cy.get('div[role="button"]').contains('Get started').click()
        cy.contains('Pay by credit card').click()
        cy.get('input[name="name"]').click().type('Test User')
        cy.get('input[autocomplete="cc-number"]').type('372609090912345')
        cy.get('input[name="cc-exp-month"]').click.type('11')
        cy.get('input[name="cc-exp-year"]').click.type('24')
        cy.get('input[name="cvv"]').click.type('123')
        cy.get('input[data-test-id="formButton-submit"]').click
        }
    )
    }
)