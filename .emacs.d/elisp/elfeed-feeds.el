(setq elfeed-feeds
      '(;; News
        ("http://www.tagesschau.de/export/podcast/hi/tagesschau-in-100-sekunden/" news)
        ("https://www.heise.de/rss/heise-Rubrik-IT-atom.xml" news tech)

        ;; Blogs
        ("https://unixsheikh.com/feed.rss" tech linux privacy)
        ("https://lukesmith.xyz/rss.xml" personal tech)

        ("https://serpentsec.com/feed/" security)
        ("https://based.cooking/rss.xml" cooking)

        ("https://planet.emacslife.com/atom.xml" emacs tech)
        ("https://karl-voit.at/feeds/lazyblorg-all.atom_1.0.links-and-content.xml" emacs tech)
        ("https://oneofus.la/have-emacs-will-hack/feed.xml" emacs tech)
        ("http://oremacs.com/atom.xml" emacs tech)
        ("http://pragmaticemacs.com/feed/" emacs tech)
        ("https://www.reddit.com/r/orgmode.rss" emacs tech)
        ("https://blog.tecosaur.com/tmio/rss.xml" emacs tech)

        ;; YouTube
        ("https://www.youtube.com/feeds/videos.xml?channel_id=UCKqoiG45T1OkQkUEq5dEMzA" knifes victorinox yt videos)
        ("https://www.youtube.com/feeds/videos.xml?channel_id=UCsnGwSIHyoYN0kiINAGUKxg" yt tech linux videos)
        ("https://www.youtube.com/feeds/videos.xml?channel_id=UChBEbMKI1eCcejTtmI32UEw" yt cooking videos)
        ("https://www.youtube.com/feeds/videos.xml?channel_id=UCsVWpmoRsNAWZb59b6Pt9Kg" videos)
        ("https://www.youtube.com/feeds/videos.xml?channel_id=UCTHij3Ac5GizLsn5yB4IX_Q" videos)
        ("https://www.youtube.com/feeds/videos.xml?channel_id=UCm9faLh4Rrmlp8FR9MPsJxg" videos)
        ("https://www.youtube.com/feeds/videos.xml?channel_id=UCZNhwA1B5YqiY1nLzmM0ZRg" videos)
        ("https://www.youtube.com/feeds/videos.xml?channel_id=UCfp-lNJy4QkIGnaEE6NtDSg" videos)
        ("https://www.youtube.com/feeds/videos.xml?channel_id=UCts-8ZqS339n-9nxy3DN8Cg" videos)
        ("https://www.youtube.com/feeds/videos.xml?channel_id=UCbTDXDBHApa_cvcOx86yJOA" videos)
        ("https://www.youtube.com/feeds/videos.xml?channel_id=UCRE3NFNtdjR96-H4QG4U1Fg" videos)
        ("https://www.youtube.com/feeds/videos.xml?channel_id=UC5QwYlOxcT1higtcJVGzCCg" videos)
        ("https://www.youtube.com/feeds/videos.xml?channel_id=UClcE-kVhqyiHCcjYwcpfj9w" videos)
        ("https://www.youtube.com/feeds/videos.xml?channel_id=UCAiiOTio8Yu69c3XnR7nQBQ" videos)
        ("https://www.youtube.com/feeds/videos.xml?channel_id=UCekQr9znsk2vWxBo3YiLq2w" videos) ;; You Suck at Cooking
        ("https://www.youtube.com/feeds/videos.xml?channel_id=UCeRbfFkBo6wJIyq87Rxg7EA" videos outdoor bushcraft)
        ("https://www.youtube.com/feeds/videos.xml?channel_id=UC0uTPqBCFIpZxlz_Lv1tk_g" videos emacs tech) ;; Protestilaos Stavrou

        ("https://videos.lukesmith.xyz/feeds/videos.xml?accountId=3" videos)

        ;; reddit
        ("https://old.reddit.com/r/linux.rss" linux reddit)
        ("https://old.reddit.com/r/archlinux.rss" linux reddit)
        ("https://old.reddit.com/r/suckless.rss" reddit)
        ("https://old.reddit.com/r/emacs/.rss" reddit emacs)

        ;; Podcasts
        ("https://notrelated.xyz/rss" podcasts)
        ("http://feeds.soundcloud.com/users/soundcloud:users:261098918/sounds.rss" privacy security tech podcasts)

        ;; Websites
        ("https://www.archlinux.org/feeds/news/" linux linux tech arch)
        "https://store.pine64.org/shop/feed/"
        "http://suckless.org/atom.xml"
        ("https://www.brandonsanderson.com/feed/" books fantasy)))

(provide 'elfeed-feeds)
;;; elfeed-feeds.el ends here
