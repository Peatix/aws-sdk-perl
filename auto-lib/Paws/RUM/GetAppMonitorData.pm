
package Paws::RUM::GetAppMonitorData;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RUM::QueryFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has TimeRange => (is => 'ro', isa => 'Paws::RUM::TimeRange', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAppMonitorData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/appmonitor/{Name}/data');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RUM::GetAppMonitorDataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::GetAppMonitorData - Arguments for method GetAppMonitorData on L<Paws::RUM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAppMonitorData on the
L<CloudWatch RUM|Paws::RUM> service. Use the attributes of this class
as arguments to method GetAppMonitorData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAppMonitorData.

=head1 SYNOPSIS

    my $rum = Paws->service('RUM');
    my $GetAppMonitorDataResponse = $rum->GetAppMonitorData(
      Name      => 'MyAppMonitorName',
      TimeRange => {
        After  => 1,
        Before => 1,
      },
      Filters => [
        {
          Name   => 'MyQueryFilterKey',               # OPTIONAL
          Values => [ 'MyQueryFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $Events    = $GetAppMonitorDataResponse->Events;
    my $NextToken = $GetAppMonitorDataResponse->NextToken;

    # Returns a L<Paws::RUM::GetAppMonitorDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rum/GetAppMonitorData>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::RUM::QueryFilter>]

An array of structures that you can use to filter the results to those
that match one or more sets of key-value pairs that you specify.



=head2 MaxResults => Int

The maximum number of results to return in one operation.



=head2 B<REQUIRED> Name => Str

The name of the app monitor that collected the data that you want to
retrieve.



=head2 NextToken => Str

Use the token returned by the previous operation to request the next
page of results.



=head2 B<REQUIRED> TimeRange => L<Paws::RUM::TimeRange>

A structure that defines the time range that you want to retrieve
results from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAppMonitorData in L<Paws::RUM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

