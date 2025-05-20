
package Paws::FSX::UpdateFileCache;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has FileCacheId => (is => 'ro', isa => 'Str', required => 1);
  has LustreConfiguration => (is => 'ro', isa => 'Paws::FSX::UpdateFileCacheLustreConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFileCache');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::UpdateFileCacheResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::UpdateFileCache - Arguments for method UpdateFileCache on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFileCache on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method UpdateFileCache.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFileCache.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $UpdateFileCacheResponse = $fsx->UpdateFileCache(
      FileCacheId         => 'MyFileCacheId',
      ClientRequestToken  => 'MyClientRequestToken',    # OPTIONAL
      LustreConfiguration => {
        WeeklyMaintenanceStartTime => 'MyWeeklyTime', # min: 7, max: 7; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $FileCache = $UpdateFileCacheResponse->FileCache;

    # Returns a L<Paws::FSX::UpdateFileCacheResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/UpdateFileCache>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str





=head2 B<REQUIRED> FileCacheId => Str

The ID of the cache that you are updating.



=head2 LustreConfiguration => L<Paws::FSX::UpdateFileCacheLustreConfiguration>

The configuration updates for an Amazon File Cache resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFileCache in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

