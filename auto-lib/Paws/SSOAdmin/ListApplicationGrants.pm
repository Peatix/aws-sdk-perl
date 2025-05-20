
package Paws::SSOAdmin::ListApplicationGrants;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplicationGrants');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::ListApplicationGrantsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListApplicationGrants - Arguments for method ListApplicationGrants on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplicationGrants on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method ListApplicationGrants.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplicationGrants.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $ListApplicationGrantsResponse = $sso->ListApplicationGrants(
      ApplicationArn => 'MyApplicationArn',
      NextToken      => 'MyToken',            # OPTIONAL
    );

    # Results:
    my $Grants    = $ListApplicationGrantsResponse->Grants;
    my $NextToken = $ListApplicationGrantsResponse->NextToken;

    # Returns a L<Paws::SSOAdmin::ListApplicationGrantsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/ListApplicationGrants>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationArn => Str

Specifies the ARN of the application whose grants you want to list.



=head2 NextToken => Str

Specifies that you want to receive the next page of results. Valid only
if you received a C<NextToken> response in the previous request. If you
did, it indicates that more output is available. Set this parameter to
the value provided by the previous call's C<NextToken> response to
request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplicationGrants in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

