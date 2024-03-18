if hash terraform 2>/dev/null; then
  alias tfs="tfenv use min-required"
  alias tfi='terraform init'
  alias tfp='terraform plan -out=tfplan.out'
  alias tfpd='terraform plan -out=tfplan.out -destroy'
  alias tfa='terraform apply tfplan.out'
fi
