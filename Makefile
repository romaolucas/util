BIN:= Hello

# Directories
SRCDIR := src
BINDIR := bin
INCDIR := include
OBJDIR := obj

# Programs
CC    := gcc
RM    := rm -f
RMDIR := rm -rf
MKDIR := mkdir -p

# Automatic Vars
CLIBS := -I$(INCDIR)
SRC   := $(wildcard $(SRCDIR)/*.c) 
OBJ   := $(patsubst $(SRCDIR)/%.c,$(OBJDIR)/%.o,$(SRC))

# Rules
all: $(BINDIR)/$(BIN)

$(BINDIR)/$(BIN): $(OBJ) | $(BINDIR)
	@$(CC) $^ -o $@ 
	@echo "Generating C binary \033[1;32m"$@"\033[m"
	
$(OBJ): |$(OBJDIR)

$(OBJDIR)/%.o: $(SRCDIR)/%.c
	$(CC) $(CLIBS) -c $< -o $@

$(OBJDIR) $(BINDIR): 
	$(MKDIR) $@

# Clean
.PHONY: clean
clean:
	$(RMDIR) $(OBJDIR)

.PHONY: distclean
distclean: clean
	$(RMDIR) $(BINDIR)

# Debug
.PHONY: dump
dump:
	@echo $(SRC)
	@echo $(OBJ)
