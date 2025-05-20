
package Paws::RedShift::GetReservedNodeExchangeConfigurationOptions;
  use Moose;
  has ActionType => (is => 'ro', isa => 'Str', required => 1);
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReservedNodeExchangeConfigurationOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::GetReservedNodeExchangeConfigurationOptionsOutputMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetReservedNodeExchangeConfigurationOptionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::GetReservedNodeExchangeConfigurationOptions - Arguments for method GetReservedNodeExchangeConfigurationOptions on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReservedNodeExchangeConfigurationOptions on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method GetReservedNodeExchangeConfigurationOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReservedNodeExchangeConfigurationOptions.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $GetReservedNodeExchangeConfigurationOptionsOutputMessage =
      $redshift->GetReservedNodeExchangeConfigurationOptions(
      ActionType         => 'restore-cluster',
      ClusterIdentifier  => 'MyString',          # OPTIONAL
      Marker             => 'MyString',          # OPTIONAL
      MaxRecords         => 1,                   # OPTIONAL
      SnapshotIdentifier => 'MyString',          # OPTIONAL
      );

    # Results:
    my $Marker =
      $GetReservedNodeExchangeConfigurationOptionsOutputMessage->Marker;
    my $ReservedNodeConfigurationOptionList =
      $GetReservedNodeExchangeConfigurationOptionsOutputMessage
      ->ReservedNodeConfigurationOptionList;

# Returns a L<Paws::RedShift::GetReservedNodeExchangeConfigurationOptionsOutputMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/GetReservedNodeExchangeConfigurationOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionType => Str

The action type of the reserved-node configuration. The action type can
be an exchange initiated from either a snapshot or a resize.

Valid values are: C<"restore-cluster">, C<"resize-cluster">

=head2 ClusterIdentifier => Str

The identifier for the cluster that is the source for a reserved-node
exchange.



=head2 Marker => Str

An optional pagination token provided by a previous
C<GetReservedNodeExchangeConfigurationOptions> request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by the C<MaxRecords> parameter. You
can retrieve the next set of response records by providing the returned
marker value in the C<Marker> parameter and retrying the request.



=head2 MaxRecords => Int

The maximum number of response records to return in each call. If the
number of remaining response records exceeds the specified
C<MaxRecords> value, a value is returned in a C<Marker> field of the
response. You can retrieve the next set of records by retrying the
command with the returned marker value.



=head2 SnapshotIdentifier => Str

The identifier for the snapshot that is the source for the
reserved-node exchange.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReservedNodeExchangeConfigurationOptions in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

