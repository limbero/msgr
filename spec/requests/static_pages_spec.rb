require 'spec_helper'

describe "Static pages" do
    describe "Home page" do
        it "should have the h1 'Msgr'" do
            visit '/static_pages/home'
            page.should have_selector('h1', :text => 'Msgr')
        end
        it "should have the right title" do
            visit '/static_pages/home'
            page.should have_selector('title', :text => "Msgr | Home")
        end
    end

    describe "Help page" do
        it "should have the h1 'Help'" do
            visit '/static_pages/help'
            page.should have_selector('h1', :text => 'Help')
        end
        it "should have the right title" do
            visit '/static_pages/help'
            page.should have_selector('title', :text => "Msgr | Help")
        end
    end

    describe "About page" do
        it "should have the h1 'About Msgr'" do
            visit '/static_pages/about'
            page.should have_selector('h1', :text => 'About Msgr')
        end
        it "should have the right title" do
            visit '/static_pages/about'
            page.should have_selector('title', :text => "Msgr | About Msgr")
        end
    end

    describe "Contact page" do
        it "should have the h1 'Contact'" do
            visit '/static_pages/contact'
            page.should have_selector('h1', :text => 'Contact')
        end
        it "should have the right title" do
            visit '/static_pages/contact'
            page.should have_selector('title', :text => "Msgr | Contact")
        end
    end
end
