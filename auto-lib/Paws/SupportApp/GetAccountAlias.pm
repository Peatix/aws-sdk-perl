
package Paws::SupportApp::GetAccountAlias;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/control/get-account-alias');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupportApp::GetAccountAliasResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupportApp::GetAccountAlias - Arguments for method GetAccountAlias on L<Paws::SupportApp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccountAlias on the
L<AWS Support App|Paws::SupportApp> service. Use the attributes of this class
as arguments to method GetAccountAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccountAlias.

=head1 SYNOPSIS

    my $supportapp = Paws->service('SupportApp');
    my $GetAccountAliasResult = $supportapp->GetAccountAlias();

    # Results:
    my $AccountAlias = $GetAccountAliasResult->AccountAlias;

    # Returns a L<Paws::SupportApp::GetAccountAliasResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/supportapp/GetAccountAlias>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccountAlias in L<Paws::SupportApp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

