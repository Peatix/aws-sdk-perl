
package Paws::ApplicationSignals::ListServiceDependencies;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'EndTime', required => 1);
  has KeyAttributes => (is => 'ro', isa => 'Paws::ApplicationSignals::Attributes', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'StartTime', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServiceDependencies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/service-dependencies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationSignals::ListServiceDependenciesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::ListServiceDependencies - Arguments for method ListServiceDependencies on L<Paws::ApplicationSignals>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServiceDependencies on the
L<Amazon CloudWatch Application Signals|Paws::ApplicationSignals> service. Use the attributes of this class
as arguments to method ListServiceDependencies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServiceDependencies.

=head1 SYNOPSIS

    my $application-signals = Paws->service('ApplicationSignals');
    my $ListServiceDependenciesOutput =
      $application -signals->ListServiceDependencies(
      EndTime       => '1970-01-01T01:00:00',
      KeyAttributes => {
        'MyKeyAttributeName' =>
          'MyKeyAttributeValue',    # , value: min: 1, max: 1024
      },
      StartTime  => '1970-01-01T01:00:00',
      MaxResults => 1,                       # OPTIONAL
      NextToken  => 'MyNextToken',           # OPTIONAL
      );

    # Results:
    my $EndTime   = $ListServiceDependenciesOutput->EndTime;
    my $NextToken = $ListServiceDependenciesOutput->NextToken;
    my $ServiceDependencies =
      $ListServiceDependenciesOutput->ServiceDependencies;
    my $StartTime = $ListServiceDependenciesOutput->StartTime;

  # Returns a L<Paws::ApplicationSignals::ListServiceDependenciesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-signals/ListServiceDependencies>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end of the time period to retrieve information about. When used in
a raw HTTP Query API, it is formatted as be epoch time in seconds. For
example: C<1698778057>

Your requested end time will be rounded to the nearest hour.



=head2 B<REQUIRED> KeyAttributes => L<Paws::ApplicationSignals::Attributes>

Use this field to specify which service you want to retrieve
information for. You must specify at least the C<Type>, C<Name>, and
C<Environment> attributes.

This is a string-to-string map. It can include the following fields.

=over

=item *

C<Type> designates the type of object this is.

=item *

C<ResourceType> specifies the type of the resource. This field is used
only when the value of the C<Type> field is C<Resource> or
C<AWS::Resource>.

=item *

C<Name> specifies the name of the object. This is used only if the
value of the C<Type> field is C<Service>, C<RemoteService>, or
C<AWS::Service>.

=item *

C<Identifier> identifies the resource objects of this resource. This is
used only if the value of the C<Type> field is C<Resource> or
C<AWS::Resource>.

=item *

C<Environment> specifies the location where this object is hosted, or
what it belongs to.

=back




=head2 MaxResults => Int

The maximum number of results to return in one operation. If you omit
this parameter, the default of 50 is used.



=head2 NextToken => Str

Include this value, if it was returned by the previous operation, to
get the next set of service dependencies.



=head2 B<REQUIRED> StartTime => Str

The start of the time period to retrieve information about. When used
in a raw HTTP Query API, it is formatted as be epoch time in seconds.
For example: C<1698778057>

Your requested start time will be rounded to the nearest hour.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServiceDependencies in L<Paws::ApplicationSignals>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

