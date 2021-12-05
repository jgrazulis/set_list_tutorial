RSpec.describe "Songs index page", type :feature do
    it 'can see all songs, their titles, play count, and length' do
        song_1 = Song.create(title: "I Really Like You", length: 208, play_count: 2456357)
        song_2 = Song.create(title: "Call Me Maybe", length: 207, play_count: 21456357)

        visit "/songs"

        expect(page).to have_content(song_1.title)
        expect(page).to have_content("Play Count: #{song_1.play_count}")
        expect(page).to have_content(song_2.title)
        expect(page).to have_content("Play Count: #{song_2.play_count}")
        expect(page).to have_content("Length: #{song_1.length}")
        expect(page).to have_content("Length: #{song_2.length}")

    end
end