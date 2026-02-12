# Deployment Guide

## Download Source Code

Your complete portfolio source code has been packaged as a ZIP file.

**Location**: `../output/portfolio-source.zip` (55KB)

To create a new ZIP file at any time, run:
```bash
./create-zip.sh
```

## Quick Start After Extracting ZIP

1. Extract the ZIP file to your desired location
2. Open a terminal in the extracted folder
3. Install dependencies:
   ```bash
   npm install
   ```
4. Start development server:
   ```bash
   npm run dev
   ```
5. Open `http://localhost:5173` in your browser

## Customizing Your Portfolio

### 1. Update Personal Information

**Name and Title** (`src/components/Hero.tsx`):
```typescript
<h1>Hi, I'm Your Name</h1>  // Line 25
<p>Full Stack Developer & Creative Problem Solver</p>  // Line 33
```

**Social Links** (`src/components/Hero.tsx`):
```typescript
const socialLinks = [
  { icon: Github, href: '#', label: 'GitHub' },  // Add your GitHub URL
  { icon: Linkedin, href: '#', label: 'LinkedIn' },  // Add your LinkedIn URL
  { icon: Mail, href: '#contact', label: 'Email' },
];
```

**Contact Information** (`src/components/Contact.tsx`):
```typescript
const contactInfo = [
  { icon: Mail, text: 'your.email@example.com', label: 'Email' },
  { icon: Phone, text: '+1 (555) 123-4567', label: 'Phone' },
  { icon: MapPin, text: 'San Francisco, CA', label: 'Location' },
];
```

### 2. Update Projects

Edit `src/components/Projects.tsx` and modify the `projects` array:

```typescript
const projects: Project[] = [
  {
    title: 'Your Project Name',
    description: 'Describe what your project does',
    technologies: ['React', 'TypeScript', 'etc'],
    githubUrl: 'https://github.com/yourusername/project',
    liveUrl: 'https://your-project.com',
    image: '🎨',  // Use an emoji or replace with actual images
  },
  // Add more projects...
];
```

### 3. Update Skills

Edit `src/components/Skills.tsx` to match your skill set:

```typescript
const skillCategories: SkillCategory[] = [
  {
    title: 'Frontend',
    icon: Code2,
    skills: ['React', 'TypeScript', 'Your Skills Here'],
  },
  // Modify other categories...
];
```

### 4. Update Page Title and Metadata

Edit `index.html`:
```html
<title>Your Name - Portfolio</title>
```

## Deployment Options

### Option 1: GitHub Pages (Recommended)

**For Project Repository** (e.g., `username.github.io/portfolio`):

1. Create a new GitHub repository
2. Update `vite.config.ts`:
   ```typescript
   base: '/your-repo-name/',  // Replace with your actual repo name
   ```
3. Initialize git and push:
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
   git push -u origin main
   ```
4. Deploy:
   ```bash
   npm run deploy
   ```
5. Enable GitHub Pages in repo Settings > Pages > Set source to "gh-pages"
6. Visit `https://YOUR_USERNAME.github.io/YOUR_REPO/`

**For User Page** (e.g., `username.github.io`):

1. Create a repo named `username.github.io` (replace username with yours)
2. Keep `base: './'` in `vite.config.ts`
3. Follow steps 3-4 above
4. Visit `https://YOUR_USERNAME.github.io`

### Option 2: Vercel

1. Install Vercel CLI:
   ```bash
   npm install -g vercel
   ```
2. Deploy:
   ```bash
   vercel
   ```
3. Follow the prompts

### Option 3: Netlify

1. Build your project:
   ```bash
   npm run build
   ```
2. Drag and drop the `dist` folder to [Netlify Drop](https://app.netlify.com/drop)

Or use Netlify CLI:
```bash
npm install -g netlify-cli
netlify deploy --prod
```

### Option 4: Custom Server

1. Build the project:
   ```bash
   npm run build
   ```
2. Upload the contents of the `dist` folder to your web server
3. Configure your server to serve the `index.html` for all routes

## Adding Images

To use actual images instead of emojis:

1. Create a `public/images` folder in your project
2. Add your images there (e.g., `project1.jpg`)
3. Update project cards in `src/components/Projects.tsx`:
   ```typescript
   // Replace the emoji div with:
   <div className="h-48 bg-gray-700 overflow-hidden">
     <img
       src="./images/project1.jpg"
       alt={project.title}
       className="w-full h-full object-cover"
     />
   </div>
   ```

## Troubleshooting

### Build Fails
```bash
npm run typecheck  # Check for TypeScript errors
npm run lint       # Check for linting issues
```

### Images Not Loading on GitHub Pages
- Ensure you've updated the `base` path in `vite.config.ts`
- Use relative paths for images (starting with `./`)

### Styles Not Working
```bash
rm -rf node_modules package-lock.json
npm install
npm run build
```

### Contact Form Not Sending
The current form is a demo. To make it functional:
1. Use a service like Formspree, EmailJS, or Web3Forms
2. Or connect to your own backend API

## Performance Tips

1. **Optimize Images**: Use WebP format and compress images
2. **Lazy Loading**: Images load as you scroll (already implemented)
3. **Code Splitting**: Vite handles this automatically
4. **Cache**: GitHub Pages and Vercel handle caching automatically

## SEO Optimization

Update `index.html` for better SEO:

```html
<title>Your Name - Full Stack Developer</title>
<meta name="description" content="Portfolio of Your Name, a Full Stack Developer specializing in React, TypeScript, and modern web technologies.">
<meta property="og:title" content="Your Name - Portfolio">
<meta property="og:description" content="Check out my latest projects and skills">
<meta property="og:image" content="./images/og-image.jpg">
```

## Next Steps

1. Customize all personal information
2. Add your real projects with screenshots
3. Update skills to match your expertise
4. Test the build: `npm run build && npm run preview`
5. Deploy to your chosen platform
6. Share your portfolio!

## Support

If you encounter any issues:
1. Check the main README.md file
2. Ensure all dependencies are installed: `npm install`
3. Clear cache: `rm -rf node_modules dist && npm install`
4. Check the browser console for errors

---

**Remember**: This is your portfolio. Make it unique by adding your personality, real projects, and customizing the design to match your style!
