function vt --description 'validate cloudformation template using cfn-lint'
	if not command -sq cfn-lint
    echo "cfn-lint not found, installing"
    # install cfn-lint
    pip install cfn-lint
  end
  echo "checking $argv"
  cfn-lint $argv --region us-east-1
end
