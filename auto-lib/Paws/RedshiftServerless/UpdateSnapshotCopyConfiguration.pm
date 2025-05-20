
package Paws::RedshiftServerless::UpdateSnapshotCopyConfiguration;
  use Moose;
  has SnapshotCopyConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'snapshotCopyConfigurationId' , required => 1);
  has SnapshotRetentionPeriod => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'snapshotRetentionPeriod' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSnapshotCopyConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::UpdateSnapshotCopyConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::UpdateSnapshotCopyConfiguration - Arguments for method UpdateSnapshotCopyConfiguration on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSnapshotCopyConfiguration on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method UpdateSnapshotCopyConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSnapshotCopyConfiguration.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $UpdateSnapshotCopyConfigurationResponse =
      $redshift -serverless->UpdateSnapshotCopyConfiguration(
      SnapshotCopyConfigurationId => 'MyString',
      SnapshotRetentionPeriod     => 1,            # OPTIONAL
      );

    # Results:
    my $SnapshotCopyConfiguration =
      $UpdateSnapshotCopyConfigurationResponse->SnapshotCopyConfiguration;

# Returns a L<Paws::RedshiftServerless::UpdateSnapshotCopyConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/UpdateSnapshotCopyConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SnapshotCopyConfigurationId => Str

The ID of the snapshot copy configuration to update.



=head2 SnapshotRetentionPeriod => Int

The new retention period of how long to keep a snapshot in the
destination Amazon Web Services Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSnapshotCopyConfiguration in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

