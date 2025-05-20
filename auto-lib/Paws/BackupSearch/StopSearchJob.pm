
package Paws::BackupSearch::StopSearchJob;
  use Moose;
  has SearchJobIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SearchJobIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopSearchJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/search-jobs/{SearchJobIdentifier}/actions/cancel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupSearch::StopSearchJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch::StopSearchJob - Arguments for method StopSearchJob on L<Paws::BackupSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopSearchJob on the
L<AWS Backup Search|Paws::BackupSearch> service. Use the attributes of this class
as arguments to method StopSearchJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopSearchJob.

=head1 SYNOPSIS

    my $backup-search = Paws->service('BackupSearch');
    my $StopSearchJobOutput = $backup -search->StopSearchJob(
      SearchJobIdentifier => 'MyGenericId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-search/StopSearchJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SearchJobIdentifier => Str

The unique string that specifies the search job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopSearchJob in L<Paws::BackupSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

