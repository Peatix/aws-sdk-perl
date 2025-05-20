
package Paws::ApplicationSignals::ListServices;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'AwsAccountId');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'EndTime', required => 1);
  has IncludeLinkedAccounts => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'IncludeLinkedAccounts');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'StartTime', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServices');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/services');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationSignals::ListServicesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::ListServices - Arguments for method ListServices on L<Paws::ApplicationSignals>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServices on the
L<Amazon CloudWatch Application Signals|Paws::ApplicationSignals> service. Use the attributes of this class
as arguments to method ListServices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServices.

=head1 SYNOPSIS

    my $application-signals = Paws->service('ApplicationSignals');
    my $ListServicesOutput = $application -signals->ListServices(
      EndTime               => '1970-01-01T01:00:00',
      StartTime             => '1970-01-01T01:00:00',
      AwsAccountId          => 'MyAwsAccountId',        # OPTIONAL
      IncludeLinkedAccounts => 1,                       # OPTIONAL
      MaxResults            => 1,                       # OPTIONAL
      NextToken             => 'MyNextToken',           # OPTIONAL
    );

    # Results:
    my $EndTime          = $ListServicesOutput->EndTime;
    my $NextToken        = $ListServicesOutput->NextToken;
    my $ServiceSummaries = $ListServicesOutput->ServiceSummaries;
    my $StartTime        = $ListServicesOutput->StartTime;

    # Returns a L<Paws::ApplicationSignals::ListServicesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-signals/ListServices>

=head1 ATTRIBUTES


=head2 AwsAccountId => Str

Amazon Web Services Account ID.



=head2 B<REQUIRED> EndTime => Str

The end of the time period to retrieve information about. When used in
a raw HTTP Query API, it is formatted as be epoch time in seconds. For
example: C<1698778057>

Your requested start time will be rounded to the nearest hour.



=head2 IncludeLinkedAccounts => Bool

If you are using this operation in a monitoring account, specify
C<true> to include services from source accounts in the returned data.

 </p>



=head2 MaxResults => Int

The maximum number of results to return in one operation. If you omit
this parameter, the default of 50 is used.



=head2 NextToken => Str

Include this value, if it was returned by the previous operation, to
get the next set of services.



=head2 B<REQUIRED> StartTime => Str

The start of the time period to retrieve information about. When used
in a raw HTTP Query API, it is formatted as be epoch time in seconds.
For example: C<1698778057>

Your requested start time will be rounded to the nearest hour.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServices in L<Paws::ApplicationSignals>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

