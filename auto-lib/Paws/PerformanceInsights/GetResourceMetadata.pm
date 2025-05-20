
package Paws::PerformanceInsights::GetResourceMetadata;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has ServiceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PerformanceInsights::GetResourceMetadataResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::GetResourceMetadata - Arguments for method GetResourceMetadata on L<Paws::PerformanceInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceMetadata on the
L<AWS Performance Insights|Paws::PerformanceInsights> service. Use the attributes of this class
as arguments to method GetResourceMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceMetadata.

=head1 SYNOPSIS

    my $pi = Paws->service('PerformanceInsights');
    my $GetResourceMetadataResponse = $pi->GetResourceMetadata(
      Identifier  => 'MyIdentifierString',
      ServiceType => 'RDS',

    );

    # Results:
    my $Features   = $GetResourceMetadataResponse->Features;
    my $Identifier = $GetResourceMetadataResponse->Identifier;

   # Returns a L<Paws::PerformanceInsights::GetResourceMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pi/GetResourceMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

An immutable identifier for a data source that is unique for an Amazon
Web Services Region. Performance Insights gathers metrics from this
data source. To use a DB instance as a data source, specify its
C<DbiResourceId> value. For example, specify
C<db-ABCDEFGHIJKLMNOPQRSTU1VW2X>.



=head2 B<REQUIRED> ServiceType => Str

The Amazon Web Services service for which Performance Insights returns
metrics.

Valid values are: C<"RDS">, C<"DOCDB">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceMetadata in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

