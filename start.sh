#!/bin/bash
# ==============================================================================
# GURU Platform — Easy Launcher Script
# Full Name: GURU — Guided Understanding, Research and University Projects
# ==============================================================================

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export PATH="/home/rgukt/.local/bin:/home/rgukt/.local/node-v20.18.0-linux-x64/bin:$PATH"

echo "====================================================================="
echo "  🎓 GURU — Guided Understanding, Research and University Projects"
echo "  Tagline: Find a Problem. Understand the Technology. Build a Solution."
echo "====================================================================="

# Check Node
if ! command -v node &> /dev/null; then
    echo "❌ Node.js not found in PATH. Please verify /home/rgukt/.local/node-v20.18.0-linux-x64/bin"
    exit 1
fi

echo "✓ Node.js version: $(node -v)"

# Check Database
DB_FILE="$PROJECT_DIR/server/guru.db"
if [ ! -f "$DB_FILE" ]; then
    echo "⚡ Initializing and seeding database from source documents..."
    python3 "$PROJECT_DIR/ingestion/build_database.py"
fi

# Ensure client is built
if [ ! -d "$PROJECT_DIR/client/dist" ]; then
    echo "⚡ Building client application..."
    (cd "$PROJECT_DIR/client" && npm run build)
fi

# Check if server is already running on port 5000
if lsof -Pi :5000 -sTCP:LISTEN -t >/dev/null ; then
    echo "✓ GURU Server is already running on port 5000."
else
    echo "🚀 Starting GURU Server on http://localhost:5000..."
    (cd "$PROJECT_DIR/server" && node server.js) &
    sleep 2
fi

echo "====================================================================="
echo "🎉 GURU is LIVE and ready to use!"
echo ""
echo "👉 Open in your web browser:"
echo "   • Main Web Application : http://localhost:5000"
echo "   • Direct HTML Launcher : file://$PROJECT_DIR/index.html"
echo ""
echo "🔑 Demo Logins:"
echo "   • Student Account : student@guru.edu / Student@123"
echo "   • Admin Account   : admin@guru.edu / Admin@123"
echo "====================================================================="
