package Paws::EC2::NetworkInsightsAccessScopeContent;
  use Moose;
  has ExcludePaths => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AccessScopePath]', request_name => 'excludePathSet', traits => ['NameInRequest']);
  has MatchPaths => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AccessScopePath]', request_name => 'matchPathSet', traits => ['NameInRequest']);
  has NetworkInsightsAccessScopeId => (is => 'ro', isa => 'Str', request_name => 'networkInsightsAccessScopeId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NetworkInsightsAccessScopeContent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkInsightsAccessScopeContent object:

  $service_obj->Method(Att1 => { ExcludePaths => $value, ..., NetworkInsightsAccessScopeId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkInsightsAccessScopeContent object:

  $result = $service_obj->Method(...);
  $result->Att1->ExcludePaths

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ExcludePaths => ArrayRef[L<Paws::EC2::AccessScopePath>]

The paths to exclude.


=head2 MatchPaths => ArrayRef[L<Paws::EC2::AccessScopePath>]

The paths to match.


=head2 NetworkInsightsAccessScopeId => Str

The ID of the Network Access Scope.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
