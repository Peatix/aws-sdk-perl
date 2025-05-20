
package Paws::SSOAdmin::ListApplications;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::SSOAdmin::ListApplicationsFilter');
  has InstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::ListApplicationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListApplications - Arguments for method ListApplications on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplications on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method ListApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplications.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $ListApplicationsResponse = $sso->ListApplications(
      InstanceArn => 'MyInstanceArn',
      Filter      => {
        ApplicationAccount  => 'MyAccountId',    # min: 12, max: 12; OPTIONAL
        ApplicationProvider =>
          'MyApplicationProviderArn',            # min: 10, max: 1224; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $Applications = $ListApplicationsResponse->Applications;
    my $NextToken    = $ListApplicationsResponse->NextToken;

    # Returns a L<Paws::SSOAdmin::ListApplicationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/ListApplications>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::SSOAdmin::ListApplicationsFilter>

Filters response results.



=head2 B<REQUIRED> InstanceArn => Str

The ARN of the IAM Identity Center application under which the
operation will run. For more information about ARNs, see Amazon
Resource Names (ARNs) and Amazon Web Services Service Namespaces in the
I<Amazon Web Services General Reference>.



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

This class forms part of L<Paws>, documenting arguments for method ListApplications in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

