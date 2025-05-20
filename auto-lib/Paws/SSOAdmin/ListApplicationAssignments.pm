
package Paws::SSOAdmin::ListApplicationAssignments;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplicationAssignments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::ListApplicationAssignmentsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListApplicationAssignments - Arguments for method ListApplicationAssignments on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplicationAssignments on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method ListApplicationAssignments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplicationAssignments.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $ListApplicationAssignmentsResponse = $sso->ListApplicationAssignments(
      ApplicationArn => 'MyApplicationArn',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyToken',            # OPTIONAL
    );

    # Results:
    my $ApplicationAssignments =
      $ListApplicationAssignmentsResponse->ApplicationAssignments;
    my $NextToken = $ListApplicationAssignmentsResponse->NextToken;

    # Returns a L<Paws::SSOAdmin::ListApplicationAssignmentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/ListApplicationAssignments>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationArn => Str

Specifies the ARN of the application.



=head2 MaxResults => Int

Specifies the total number of results that you want included in each
response. If additional items exist beyond the number you specify, the
C<NextToken> response element is returned with a value (not null).
Include the specified value as the C<NextToken> request parameter in
the next call to the operation to get the next set of results. Note
that the service might return fewer results than the maximum even when
there are more results available. You should check C<NextToken> after
every operation to ensure that you receive all of the results.



=head2 NextToken => Str

Specifies that you want to receive the next page of results. Valid only
if you received a C<NextToken> response in the previous request. If you
did, it indicates that more output is available. Set this parameter to
the value provided by the previous call's C<NextToken> response to
request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplicationAssignments in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

