# NIR Medicine Virtual Lab — Updated Program Package

## Program
**Executive Development Program on Non-Ionizing Radiation in Medicine**  
EGIMT, AMTZ Campus, Visakhapatnam  
4 weeks · 20 training days · 40 contact hours

## What is included
- Complete 20-day browser-based virtual laboratory interface.
- Four curriculum weeks covering foundations, mediphotonics, ultrasound/RF/microwave, and instrumentation/simulation/project work.
- Interactive client-side calculations and visualizations for all 20 days.
- Local browser progress persistence with `localStorage`.
- Measurement recording and CSV export on each lab day.
- Knowledge checks on selected curriculum days.
- Instructor mode with answer-key visibility where quizzes are present.
- Projector mode for classroom demonstration.
- Educational simulation disclaimer on every experiment page.
- Responsive layout for desktop, tablet and projector use.

## Curriculum basis
The content and organization were aligned to the supplied EDP curriculum PDFs and the supplied frontend source package (`main.jsx`, `styles.css`). The virtual lab also follows the supplied implementation brief: Learn → Configure → Experiment → Measure → Visualize → Analyze → Interpret.

## Important scope note
This package is an **educational simulation**, not a clinical device, diagnostic system, dosimetry certification tool, or treatment-planning system. The physical models are intentionally simplified for teaching.

## Run on Windows
Open Command Prompt:

```bat
cd /d "C:\Users\ramac\Desktop\nirm-virtual-lab"
npm install
npm run dev -- --host 127.0.0.1 --open
```

After the first installation, the normal start command is only:

```bat
cd /d "C:\Users\ramac\Desktop\nirm-virtual-lab"
npm run dev -- --host 127.0.0.1 --open
```

Do **not** put a `node_modules` directory into GitHub or the ZIP distribution.

## Build check

```bat
npm run build
```

The production files are generated in `dist/`.

## Deployment
The project is a static Vite/React application and can be deployed to GitHub Pages, Netlify, Vercel or another static host. No backend or database is required for the current version.
