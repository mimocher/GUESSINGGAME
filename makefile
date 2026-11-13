cat > makefile <<'EOF'
.PHONY: all

all:
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "This project is a Bash guessing game." >> README.md
	@echo "" >> README.md
	@echo "## Date and time" >> README.md
	@date >> README.md
	@echo "" >> README.md
	@echo "## Number of lines in guessinggame.sh" >> README.md
	@echo "" >> README.md
	@wc -l < guessinggame.sh >> README.md
EOF
