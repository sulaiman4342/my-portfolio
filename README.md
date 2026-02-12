# Personal Portfolio Website

A modern, responsive personal portfolio website built with React, TypeScript, Tailwind CSS, and Framer Motion.

## Features

- **Responsive Design**: Fully responsive layout that works on all devices
- **Dark Mode**: Professional dark theme with gradient accents
- **Smooth Animations**: Beautiful scroll animations using Framer Motion
- **Modern Stack**: Built with React 18, TypeScript, and Vite
- **Four Main Sections**:
  - Home/Hero section with social links
  - Projects showcase with detailed cards
  - Skills organized by category
  - Contact form with validation

## Getting Started

### Prerequisites

- Node.js (v16 or higher)
- npm or yarn

### Installation

1. Install dependencies:
```bash
npm install
```

2. Start the development server:
```bash
npm run dev
```

3. Open your browser and visit `http://localhost:5173`

## Customization

### Personal Information

Edit the following files to customize your portfolio:

1. **Hero Section** (`src/components/Hero.tsx`):
   - Update your name in the `h1` tag
   - Modify the tagline and description
   - Update social media links

2. **Projects** (`src/components/Projects.tsx`):
   - Replace the sample projects with your own
   - Update project titles, descriptions, technologies, and links
   - Change project emojis or add actual images

3. **Skills** (`src/components/Skills.tsx`):
   - Update skill categories and individual skills
   - Modify the technology stack to match your expertise

4. **Contact** (`src/components/Contact.tsx`):
   - Update contact information (email, phone, location)
   - Modify the form submission logic if needed

### Styling

- Colors and styles can be customized in `tailwind.config.js`
- The gradient colors use blue-to-purple by default
- Background colors use gray-800 and gray-900 for the dark theme

## Building for Production

Build the project for production:

```bash
npm run build
```

The optimized files will be in the `dist` folder.

Preview the production build locally:

```bash
npm run preview
```

## Deploying to GitHub Pages

This project is configured for easy deployment to GitHub Pages.

### Steps:

1. Create a new repository on GitHub

2. Initialize git in your project (if not already done):
```bash
git init
git add .
git commit -m "Initial commit"
```

3. Add your GitHub repository as remote:
```bash
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
```

4. Update `package.json` if deploying to a repository (not a user/org page):
   - If your repo is `https://github.com/username/portfolio`, the site will be at `https://username.github.io/portfolio/`
   - Update the `base` in `vite.config.ts` to `base: '/portfolio/'` (replace with your repo name)

5. Deploy to GitHub Pages:
```bash
npm run deploy
```

This command will:
- Build your project
- Create a `gh-pages` branch
- Push the built files to that branch

6. Enable GitHub Pages in your repository settings:
   - Go to Settings > Pages
   - Set Source to "gh-pages" branch
   - Your site will be live at `https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/`

### For User/Organization Pages

If you're deploying to `username.github.io`:
1. Create a repo named `username.github.io`
2. Keep `base: './'` in `vite.config.ts`
3. Run `npm run deploy`
4. Your site will be at `https://username.github.io`

## Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build
- `npm run lint` - Run ESLint
- `npm run typecheck` - Run TypeScript type checking
- `npm run deploy` - Deploy to GitHub Pages

## Technologies Used

- **React 18** - UI library
- **TypeScript** - Type safety
- **Vite** - Build tool and dev server
- **Tailwind CSS** - Utility-first CSS framework
- **Framer Motion** - Animation library
- **Lucide React** - Icon library

## Project Structure

```
src/
├── components/
│   ├── Navigation.tsx    # Top navigation bar
│   ├── Hero.tsx         # Hero/Home section
│   ├── Projects.tsx     # Projects showcase
│   ├── Skills.tsx       # Skills section
│   └── Contact.tsx      # Contact form
├── App.tsx              # Main app component
├── main.tsx            # Entry point
└── index.css           # Global styles
```

## License

This project is open source and available under the MIT License.

## Support

If you have any questions or need help customizing your portfolio, feel free to open an issue.
