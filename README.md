# jekyll-theme-zyso
## Description
The ZySo theme is my personal Jekyll theme that I use for all of my Github Pages websites/documentation. I have made this repository available to the general public; see the LICENSE.md or the License section below for more information.

## Usage
### Overall Notes
In general, the entire theme can be overridden piece by piece.
- Settings present in `_config.yml` can be changed by adding the same keys in the specific project's `_config.yml`. A good example of a key to override is the `timezone: America/Denver` setting.
- Files can be overridden by adding the same file with the same directory structure. For example, an include file `_includes/navbar.html` can be changed in the specific project files by creating a `_includes/navbar.html` file.
- In order for Jekyll to properly map files in _pages to the correct browser links, ensure that every page has the `permalink: ` front matter variable set. For example:
```html
---
title: Home
permalink: /
---

<div>
    ...
</div>
```
The ONLY exception to this are the `collections`. For example, the `_posts` collection has its permalink set to `/blog/:categories/:title` by default in the `_config.yml` file.

### Layouts
Layouts determine the default content of a page. For example, a layout called `default.html` could contain the following:
```html
<html>
    ...
    <div class="container">
        {{ content }}
    </div>
    ...
</html>
```
`{{ content }}` is a Jekyll-specific variable representing the content for a page that will render out as HTML. In the above example, the "content" is wrapped in a `<div>` tag labelled with class `container`, which could be styled in any way using CSS code.

#### Layouts included in ZySo:
- `author.html`: The layout for automatically generated author pages from the `authors` collection. Contains a section with the author's name and position, the content of the author (i.e. their description), and a list of blog posts written by that author.
- `default.html`: The base layout for _all_ pages. Other layouts may extend from default, and it is recommended for new pages/layouts to extend from/use the default layout. Contains:
    - HTML `<head>` information via include files (see 'Includes' section to learn more)
    - A custom page header. Values can be set at the page level using its front matter:
        - `header_enabled: ` Whether or not to show the page header. Defaults to `true`.
        - `page_header: ` The title of the page to be displayed in an `<h1>` tag. Defaults to `"TODO: Update page_header value in this page's front matter"`.
    - The page content using the special `{{ content }}` variable from Jekyll, wrapped in a `<div>` container.
    - A custom page footer. Values can be set at the page level using its front matter:
        - `footer_enabled: ` Whether or not to show the page footer. Defaults to `true`.
- `draft.html`: The layout for all draft blog posts. Contains the post content, but with an added "DRAFT" at the top of the page. Values can be set at the page level using its front matter:
    - `categories: ` Which category the blog post belongs to. Defaults as unset.
- `post.html`: The layout for all blog posts. Contains information about the post including the post title, author, and dates, and the content of the post. Values can be set at the page level using its front matter:
    - `categories: ` Which category the blog post belongs to. Defaults as unset.
- TODO: (Add all layouts)

### Includes
Includes can be thought of as reusable code snippets that are, as the name implies, included in other site page files. A good example of an include would be an HTML `<nav>` section containing links for a navbar.

#### Includes present in ZySo:
- `head_custom.html`: A file that can be overridden in more specific projects to include any custom `<head>` metadata. A good example would be setting a favicon.
- `head.html`: A `<head>` tag which defines default HTML metadata for the page. Values can be set at the page level using its front matter:
    - `title_override: ` If this is set to anything but an empty string, the title of the page will be overridden from the default `<title>{{ page.title }} | {{ site.title }}</title>` to the custom value. Defaults as unset.
    - `styles_path: ` Sets the default value of the stylesheet CSS file asset. Defaults to `"/assets/css/styles.css"`.
    - `feed_enabled: ` Whether or not to include Jekyll's feed plugin on the page. Defaults to `true`.
    - `seo_enabled: ` Whether or not to include Jekyll's seo plugin on the page. Defaults to `true`.
- `navbar.html`: A small snippet that includes a `<nav>` HTML section that automatically iterates through the data present in `_data/navigation.yml` and creates links for the various pages.
    - IMPORTANT: In order for navigation links to work, you must have a `_data/navigation.yml` file in the following format where 'name' is the display name for the link and 'link' is the `permalink` of the page:
```yml
- name: Home
  link: /
```
- `post_header.html`: Contains the heading for blog and draft posts, including the post title, author, and associated dates. Values can be set at the page level using its front matter:
    - `post_title: ` The title of the blog post to be displayed on the page.
- TODO: (Add all includes)

### SASS/CSS
SASS and CSS provide style rules for the website's various elements. For example, an HTML element with the class `black-box` could be styled via CSS such as the following:
```css
.black-box {
    background-color: #000000;
}
```
In the simple example above, any HTML element that has the class `black-box` will automatically have its background color set to black.

#### SASS and CSS included in ZySo:

#### CSS Classes
- TODO: (Add all custom CSS classes)

#### SASS Variables
- TODO: (Add all custom SASS variables)

### Assets
Assets typically correspond to static files such as images, icons, stylesheets, etc.

#### Assets included in ZySo:
- TODO: (Add all static assets)

## Intructions
### Installation
Add this line to your Jekyll site's `_config.yml`:
```yaml
remote_theme: zyronnsorrow/jekyll-theme-zyso
```
NOTE: the `remote_theme` variable allows you to set any jekyll theme that is hosted on Github by entering the owner and repository name. The ZySo theme is planned to remain publicly available, so that config should work for the foreseeable future. If your `_config.yml` file contains a setting for `theme: `, please remove or comment-out that setting.

### Branching Structure
- All releases are cut from the `main` branch.
- All other development branches stem from a `dev` branch.
- Merging: `(development-branch) -> dev -> main`. Merging to main will automatically trigger a release.

### Additional Information
- All releases are tagged/versioned appropriately using [Semantic Versioning](https://semver.org/).
- Commit messages should follow [Conventional Commit Standards](https://www.conventionalcommits.org/en/v1.0.0/#specification) to allow for automatic generation of changelogs.

### Local Development & Experimentation
If you would like to maintain and actively develop in your own copy of this repository, please make a fork of the project and clone that.

OR

Clone the main repository into a folder of your choosing.
- Run `bundle install` in the root folder of the repository to get all dependencies.
- Edit the `_pages/index.html` file to whatever you want to see on the home page, then run `bundle exec jekyll serve` to serve up the website at [localhost:4000](http://localhost:4000).
- Refer to the [Jekyll Documentation](https://jekyllrb.com/docs/) for more information relating to Jekyll development.

## Links
- [zyronnsorrow.github.io](https://zyronnsorrow.github.io) - The main Github Pages site all about me and what I do.
- [Repository Issues](https://github.com/ZyronnSorrow/jekyll-theme-zyso/issues)
- [Discussions](https://github.com/ZyronnSorrow/zyronnsorrow.github.io/discussions)

## Contributors
- [@ZyronnSorrow](https://github.com/ZyronnSorrow): Repository/Code Owner, Maintainer.

## Contributing
Please feel free to report bugs/problems/ideas in the Issues tab of the repository. Also, feel free to browse through and contribute to the Discussions tab. And, most importantly, be KIND to each other.

NOTE: I am not accepting pull requests to the main repository at this time. But feel free to fork and develop in that!

## License
Copyright &copy; 2023 Kevin Moore.

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT). For more information go to the linked MIT site or see the LICENSE.md file.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Special Thanks
Thanks so much for your interest in my work and/or visiting my little corner of the internet! Have a wonderful day, and keep on coding! Also, thank you for understanding that I work a full-time job and do not have a ton of time to dedicate to personal software projects like this one. Take care!

Finally, as always, a huge shout out and thanks go to my fiance and our two cats. I love my little family more than anything, and I appreciate their support and belief in me.
