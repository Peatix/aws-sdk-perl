
package Paws::FSX::DescribeBackups;
  use Moose;
  has BackupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBackups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::DescribeBackupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeBackups - Arguments for method DescribeBackups on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBackups on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method DescribeBackups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBackups.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    # To describe Amazon FSx backups
    # This operation describes all of the Amazon FSx backups in an account.
    my $DescribeBackupsResponse = $fsx->DescribeBackups();

    # Results:
    my $Backups = $DescribeBackupsResponse->Backups;

    # Returns a L<Paws::FSX::DescribeBackupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/DescribeBackups>

=head1 ATTRIBUTES


=head2 BackupIds => ArrayRef[Str|Undef]

The IDs of the backups that you want to retrieve. This parameter value
overrides any filters. If any IDs aren't found, a C<BackupNotFound>
error occurs.



=head2 Filters => ArrayRef[L<Paws::FSX::Filter>]

The filters structure. The supported names are C<file-system-id>,
C<backup-type>, C<file-system-type>, and C<volume-id>.



=head2 MaxResults => Int

Maximum number of backups to return in the response. This parameter
value must be greater than 0. The number of items that Amazon FSx
returns is the minimum of the C<MaxResults> parameter specified in the
request and the service's internal maximum number of items per page.



=head2 NextToken => Str

An opaque pagination token returned from a previous C<DescribeBackups>
operation. If a token is present, the operation continues the list from
where the returning call left off.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBackups in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

