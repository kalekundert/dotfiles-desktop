#!/usr/bin/env python3

config.load_autoconfig()


c.url.searchengines['g'] = 'https://www.google.com/search?q={}'
c.url.searchengines['m'] = c.url.searchengines['maps'] = 'https://www.google.com/maps/search/?api=1&query={}'
c.url.searchengines['yt'] = c.url.searchengines['youtube'] = 'https://www.youtube.com/results?search_query={}'
c.url.searchengines['py'] = 'https://docs.python.org/3/search.html?q={}'
c.url.searchengines['cp'] = 'http://www.cplusplus.com/search.do?q={}'
c.url.searchengines['np'] = 'https://numpy.org/doc/stable/search.html?q={}'
c.url.searchengines['pd'] = 'https://pandas.pydata.org/docs/search.html?q={}'
c.url.searchengines['pl'] = 'https://docs.pola.rs/api/python/stable/search.html?q={}'
c.url.searchengines['sp'] = 'https://docs.scipy.org/doc/scipy/search.html?q={}'
c.url.searchengines['mpl'] = 'https://matplotlib.org/stable/search.html?q={}'
c.url.searchengines['sns'] = 'https://seaborn.pydata.org/search.html?q={}'
c.url.searchengines['mi'] = 'https://more-itertools.readthedocs.io/en/stable/search.html?q={}'
c.url.searchengines['scholar'] = 'https://scholar.google.com/scholar?q={}'
c.url.searchengines['sch'] = c.url.searchengines['scholar']
c.url.searchengines['lit'] = c.url.searchengines['scholar']
#c.url.searchengines['rs'] = 'https://www.rosettacommons.org/docs/wiki/search?q={}'
#c.url.searchengines['rs'] = 'https://www.rosettacommons.org/docs/latest/search?q={}'
c.url.searchengines['rs'] = 'https://doc.rust-lang.org/std/index.html?search={}'
c.url.searchengines['rd'] = 'https://www.rdkit.org/docs/search.html?q={}'
#c.url.searchengines['rdoc'] = 'https://guybrush.ucsf.edu/doxygen/main/search.html?query={}'
c.url.searchengines['pyr'] = 'https://graylab.jhu.edu/PyRosetta.documentation/search.html?q={}'
c.url.searchengines['pyqt6'] = 'https://www.riverbankcomputing.com/static/Docs/PyQt6/search.html?q={}'
c.url.searchengines['syn'] = 'https://www.merriam-webster.com/thesaurus/{}'
c.url.searchengines['nn'] = 'https://pytorch.org/docs/stable/search.html?q={}'
c.url.searchengines['plit'] = 'https://lightning.ai/docs/pytorch/stable/search.html?q={}'
c.url.searchengines['es'] = 'https://quva-lab.github.io/escnn/search.html?q={}'

c.window.title_format = '{current_title} - {current_url} - qutebrowser'
c.tabs.mousewheel_switching = False
c.session.lazy_restore = True
c.spellcheck.languages = ['en-US']

c.aliases['zotero'] = 'spawn --userscript qute-zotero'
c.aliases['Zotero'] = 'hint links userscript zotero'

config.bind('o', 'cmd-set-text -s :open')
config.bind('O', 'cmd-set-text -s :open {url:pretty}')
config.bind('t', 'cmd-set-text -s :open -t')
config.bind('T', 'cmd-set-text -s :open -t -i {url:pretty}')
config.bind('zz', 'zotero')
config.bind('zf', 'Zotero')
config.bind('wa', 'open https://web.archive.org/web/{url}')
config.bind('gw', 'open {url}?w=1')
config.bind('gh', 'open {url:domain}{url:path}')
config.bind('gp', 'open http://ezp-prod1.hul.harvard.edu/login?url={url}')
config.bind('gf', 'spawn firefox {url}')
config.bind(';wa', 'hint links fill :open -t https://web.archive.org/web/{hint-url}')
config.bind(r'\sh', 'config-cycle -p -t -u *://{url:host}/* content.javascript.enabled ;; reload')
config.bind(r'\Sh', 'config-cycle -p -u *://{url:host}/* content.javascript.enabled ;; reload')
config.bind(r'\sH', 'config-cycle -p -t -u *://*.{url:host}/* content.javascript.enabled ;; reload')
config.bind(r'\SH', 'config-cycle -p -u *://*.{url:host}/* content.javascript.enabled ;; reload')
config.bind(r'\su', 'config-cycle -p -t -u {url} content.javascript.enabled ;; reload')
config.bind(r'\Su', 'config-cycle -p -u {url} content.javascript.enabled ;; reload')
config.bind('<Ctrl+j>', 'tab-next')
config.bind('<Ctrl+k>', 'tab-prev')
config.bind('<Ctrl+Shift+s>', 'set-cmd-text -s :spawn --userscript zotero')
config.bind('<Ctrl+Shift+p>', 'config-cycle content.proxy system socks://localhost:9050/ ;; set content.proxy')
config.bind('<Ctrl+l>', 'config-cycle tabs.show multiple never')
config.bind('<Ctrl+i>', 'mode-enter passthrough')
config.bind('<Ctrl+i>', 'mode-leave', mode='passthrough')
config.bind('<Ctrl+v>', 'insert-text {primary}', mode='insert')
config.bind('<Ctrl+v>', 'insert-text {primary}', mode='passthrough')
config.unbind('<Ctrl+v>')
