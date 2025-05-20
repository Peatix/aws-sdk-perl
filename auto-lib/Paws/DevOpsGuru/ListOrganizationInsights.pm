
package Paws::DevOpsGuru::ListOrganizationInsights;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationalUnitIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StatusFilter => (is => 'ro', isa => 'Paws::DevOpsGuru::ListInsightsStatusFilter', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOrganizationInsights');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/organization/insights');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::ListOrganizationInsightsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::ListOrganizationInsights - Arguments for method ListOrganizationInsights on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOrganizationInsights on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method ListOrganizationInsights.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOrganizationInsights.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $ListOrganizationInsightsResponse =
      $devops -guru->ListOrganizationInsights(
      StatusFilter => {
        Any => {
          StartTimeRange => {
            FromTime => '1970-01-01T01:00:00',    # OPTIONAL
            ToTime   => '1970-01-01T01:00:00',    # OPTIONAL
          },
          Type => 'REACTIVE',                     # values: REACTIVE, PROACTIVE

        },    # OPTIONAL
        Closed => {
          EndTimeRange => {
            FromTime => '1970-01-01T01:00:00',    # OPTIONAL
            ToTime   => '1970-01-01T01:00:00',    # OPTIONAL
          },
          Type => 'REACTIVE',                     # values: REACTIVE, PROACTIVE

        },    # OPTIONAL
        Ongoing => {
          Type => 'REACTIVE',    # values: REACTIVE, PROACTIVE

        },    # OPTIONAL
      },
      AccountIds => [
        'MyAwsAccountId', ...    # min: 12, max: 12
      ],    # OPTIONAL
      MaxResults            => 1,                    # OPTIONAL
      NextToken             => 'MyUuidNextToken',    # OPTIONAL
      OrganizationalUnitIds => [
        'MyOrganizationalUnitId', ...                # max: 68
      ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListOrganizationInsightsResponse->NextToken;
    my $ProactiveInsights =
      $ListOrganizationInsightsResponse->ProactiveInsights;
    my $ReactiveInsights = $ListOrganizationInsightsResponse->ReactiveInsights;

    # Returns a L<Paws::DevOpsGuru::ListOrganizationInsightsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/ListOrganizationInsights>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The ID of the Amazon Web Services account.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.



=head2 OrganizationalUnitIds => ArrayRef[Str|Undef]

The ID of the organizational unit.



=head2 B<REQUIRED> StatusFilter => L<Paws::DevOpsGuru::ListInsightsStatusFilter>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOrganizationInsights in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

