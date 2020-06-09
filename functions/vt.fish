function vt --description 'validate cloudformation template using cfn-lint' --argument-names 'template'
  if not command -sq cfn-lint
    echo "cfn-lint not found, installing"
    # install cfn-lint
    pip install cfn-lint
  end
  if test -n "$template"
    echo "checking $template"
    cfn-lint $argv --region us-east-1
  else
    echo "need to pass in template to check!"
  end
end
