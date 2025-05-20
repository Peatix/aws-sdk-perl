
package Paws::CloudTrail::ListDashboards;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NamePrefix => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDashboards');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::ListDashboardsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListDashboards - Arguments for method ListDashboards on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDashboards on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method ListDashboards.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDashboards.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $ListDashboardsResponse = $cloudtrail->ListDashboards(
      MaxResults => 1,                      # OPTIONAL
      NamePrefix => 'MyDashboardName',      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      Type       => 'MANAGED',              # OPTIONAL
    );

    # Results:
    my $Dashboards = $ListDashboardsResponse->Dashboards;
    my $NextToken  = $ListDashboardsResponse->NextToken;

    # Returns a L<Paws::CloudTrail::ListDashboardsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/ListDashboards>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of dashboards to display on a single page.



=head2 NamePrefix => Str

Specify a name prefix to filter on.



=head2 NextToken => Str

A token you can use to get the next page of dashboard results.



=head2 Type => Str

Specify a dashboard type to filter on: C<CUSTOM> or C<MANAGED>.

Valid values are: C<"MANAGED">, C<"CUSTOM">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDashboards in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

